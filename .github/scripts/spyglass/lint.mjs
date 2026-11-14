#!/usr/bin/env node
// Headless Spyglass lint runner.
//
// Spyglass has no official command-line linter, so this drives the same
// `Service` that the Spyglass language server uses, analyses every file in a
// pack directory and reports the diagnostics.
//
// Usage:
//   node lint.mjs --root <pack dir> --game-version <id> [options]
//
// Options:
//   --source-map <file>       JSON {flattened path: repo path} so annotations point at real files
//   --cache-dir <dir>         where Spyglass caches downloaded vanilla data (default ./.spyglass-cache)
//   --fail-on error|warning   lowest severity that fails the run (default: error)
//   --allow-unsupported       exit 0 with a warning when Spyglass cannot lint this version
//                             (used for snapshots, which Spyglass may not support yet)
//   --allow-undeclared        keep Spyglass's default of only warning about unknown vanilla
//                             blocks/items/tags/etc. By default these are errors, because a
//                             block that doesn't exist in a version means the pack won't work there.
//
// Exit codes: 0 = clean, 1 = lint problems, 2 = Spyglass could not lint this version.

import * as core from '@spyglassmc/core'
import { getNodeJsExternals } from '@spyglassmc/core/lib/nodejs.js'
import * as je from '@spyglassmc/java-edition'
import * as locales from '@spyglassmc/locales'
import * as mcdoc from '@spyglassmc/mcdoc'
import fs from 'node:fs'
import path from 'node:path'
import url from 'node:url'
import util from 'node:util'

const EXIT_LINT = 1
const EXIT_UNSUPPORTED = 2

function parseArgs(argv) {
	const args = { failOn: 'error', cacheDir: '.spyglass-cache', allowUnsupported: false }
	for (let i = 0; i < argv.length; i++) {
		const flag = argv[i]
		const value = () => {
			if (i + 1 >= argv.length) throw new Error(`${flag} needs a value`)
			return argv[++i]
		}
		switch (flag) {
			case '--root': args.root = value(); break
			case '--game-version': args.gameVersion = value(); break
			case '--source-map': args.sourceMap = value(); break
			case '--cache-dir': args.cacheDir = value(); break
			case '--fail-on': args.failOn = value(); break
			case '--allow-unsupported': args.allowUnsupported = true; break
			case '--allow-undeclared': args.allowUndeclared = true; break
			default: throw new Error(`Unknown argument: ${flag}`)
		}
	}
	if (!args.root || !args.gameVersion) throw new Error('--root and --game-version are required')
	if (!['error', 'warning'].includes(args.failOn)) throw new Error('--fail-on must be error or warning')
	return args
}

// GitHub workflow commands need these characters escaped.
const escapeData = (s) => s.replace(/%/g, '%25').replace(/\r/g, '%0D').replace(/\n/g, '%0A')
const escapeProp = (s) => escapeData(s).replace(/:/g, '%3A').replace(/,/g, '%2C')

function summary(markdown) {
	if (process.env.GITHUB_STEP_SUMMARY) fs.appendFileSync(process.env.GITHUB_STEP_SUMMARY, markdown + '\n')
}

const args = parseArgs(process.argv.slice(2))
const rootDir = path.resolve(args.root)
const sourceMap = args.sourceMap ? JSON.parse(fs.readFileSync(args.sourceMap, 'utf8')) : {}
const ensureSlash = core.fileUtil.ensureEndingSlash
const rootUri = ensureSlash(url.pathToFileURL(rootDir).toString())
const cacheRoot = ensureSlash(url.pathToFileURL(path.resolve(args.cacheDir)).toString())
fs.mkdirSync(path.resolve(args.cacheDir), { recursive: true })

// Spyglass reports which Minecraft version it resolved through its logger.
// Anything that isn't "Using config <our version>" means it did NOT lint what we asked for.
const problems = [] // something broke: always a failure, even for snapshots
const unsupported = [] // Spyglass doesn't know this Minecraft version yet: skipped for snapshots
let resolvedVersion
const logger = {
	error: (msg, ...a) => {
		const text = util.format(msg, ...a)
		console.error(`[spyglass error] ${text}`)
		// Spyglass logs (rather than throws) failures such as a vanilla dependency that
		// could not be downloaded. Linting without that data would be meaningless, so
		// any logged error means we did not get a trustworthy result.
		problems.push(text.split('\n')[0])
	},
	warn: (msg, ...a) => console.error(`[spyglass warn] ${util.format(msg, ...a)}`),
	info: (msg, ...a) => {
		const text = util.format(msg, ...a)
		const resolved = text.match(/\[resolveConfiguredVersion\] Using config "(.+)", selecting version (\S+)/)
		if (resolved) resolvedVersion = resolved[2]
		if (/Could not find config version|Could not determine release version/.test(text)) {
			unsupported.push(`Spyglass does not know Minecraft version "${args.gameVersion}" yet (it would have fallen back to the latest snapshot).`)
		}
		if (/\[resolveConfiguredVersion\]|\[je-initialize\]|\[Project#(analyzeProject|getTrackedFiles)\]/.test(text)) {
			console.log(text)
		}
	},
	log: () => {},
}

try {
	await locales.loadLocale('en')
} catch (e) {
	console.error('Could not load locale; messages may show as keys.', e)
}

const externals = getNodeJsExternals({ cacheRoot, logger })

// Spyglass's default `undeclaredSymbol` rule only *warns* about vanilla things that don't exist
// in the selected version ("cannot find block minecraft:x"). For a data pack that means it will
// not work on that version, so promote those reports to errors (everything else is unchanged).
const undeclaredSymbolRules = core.VanillaConfig.lint.undeclaredSymbol.map((rule) =>
	!args.allowUndeclared && rule.then?.report
		? { ...rule, then: { ...rule.then, report: 'error' } }
		: rule
)

// Last diagnostics event per file wins (files are reported during READY and again by analyzeProject).
const diagnosticsByUri = new Map()

// Spyglass only analyses files that a FileWatcher tells it about (the language server
// supplies one through the editor). Without this, it tracks no project files at all.
class DirectoryFileWatcher extends core.EventDispatcher {
	#watchedFiles = new core.UriStore()
	#isIncluded
	constructor(isIncluded) {
		super()
		this.#isIncluded = isIncluded
	}
	get watchedFiles() {
		return this.#watchedFiles
	}
	async ready() {
		try {
			for (const uri of await core.fileUtil.getAllFiles(externals, rootUri)) {
				if (this.#isIncluded(uri)) this.#watchedFiles.add(uri)
			}
			this.emit('ready', undefined)
		} catch (error) {
			this.emit('error', error)
		}
	}
	async close() {}
}

let service
try {
	service = new core.Service({
		logger,
		profilers: core.ProfilerFactory.noop(),
		project: {
			// spyglass.json in the pack root overrides this, but it must not set env.gameVersion.
			defaultConfig: core.ConfigService.merge(core.VanillaConfig, {
				env: { gameVersion: args.gameVersion },
				lint: { undeclaredSymbol: undeclaredSymbolRules },
			}),
			cacheRoot,
			externals,
			initializers: [mcdoc.initialize, je.initialize],
			projectRoots: [rootUri],
		},
	})
	service.project.on('documentErrored', ({ errors, uri }) => {
		if (uri.startsWith('archive://')) return
		diagnosticsByUri.set(uri, errors)
	})
	await service.project.init()
	await service.project.ready({
		projectRootsWatcher: new DirectoryFileWatcher((uri) => !service.project.shouldExclude(uri)),
	})
} catch (error) {
	problems.push(`Spyglass failed to start: ${error?.stack ?? error}`)
}

let analysis
if (problems.length === 0) {
	try {
		analysis = await service.project.analyzeProject()
	} catch (error) {
		problems.push(`Spyglass failed while analysing the pack: ${error?.stack ?? error}`)
	}
}
if (problems.length === 0 && (analysis?.analyzedFiles ?? 0) === 0) {
	problems.push('Spyglass analysed 0 files, so nothing was actually checked.')
}
if (problems.length === 0 && unsupported.length === 0
	&& resolvedVersion?.toLowerCase() !== args.gameVersion.toLowerCase()) {
	unsupported.push(`Requested "${args.gameVersion}" but Spyglass selected "${resolvedVersion ?? 'nothing'}".`)
}
try { await service?.project.close() } catch { /* ignore */ }

// A version Spyglass doesn't know yet is expected for new snapshots: skip it (if allowed).
if (unsupported.length > 0) {
	const message = `Spyglass could not lint ${args.gameVersion}: ${[...new Set(unsupported)].join(' | ')}`
	if (args.allowUnsupported) {
		console.log(`::warning title=Spyglass skipped ${args.gameVersion}::${escapeData(message)}`)
		summary(`⚪ \`${args.gameVersion}\`: **skipped** (Spyglass does not support this version yet)`)
		process.exit(0)
	}
	console.log(`::error title=Spyglass cannot lint ${args.gameVersion}::${escapeData(message)}`)
	summary(`🔴 \`${args.gameVersion}\`: Spyglass does not support this version`)
	process.exit(EXIT_UNSUPPORTED)
}

// Anything else going wrong is a real failure for every version, so it can never pass silently.
if (problems.length > 0) {
	const message = `Spyglass could not lint ${args.gameVersion}: ${[...new Set(problems)].slice(0, 5).join(' | ')}`
	console.log(`::error title=Spyglass failed on ${args.gameVersion}::${escapeData(message)}`)
	summary(`🔴 \`${args.gameVersion}\`: Spyglass failed (see log)`)
	process.exit(EXIT_UNSUPPORTED)
}

const threshold = args.failOn === 'warning' ? core.ErrorSeverity.Warning : core.ErrorSeverity.Error
let errorCount = 0
let warningCount = 0
let failing = 0
for (const [uri, errors] of [...diagnosticsByUri].sort(([a], [b]) => a.localeCompare(b))) {
	let relative
	try {
		relative = path.relative(rootDir, url.fileURLToPath(uri)).split(path.sep).join('/')
	} catch {
		continue
	}
	if (relative.startsWith('..')) continue
	const file = sourceMap[relative] ?? relative
	for (const error of errors) {
		if (error.severity < core.ErrorSeverity.Warning) continue // hints / information
		const isError = error.severity >= core.ErrorSeverity.Error
		isError ? errorCount++ : warningCount++
		if (error.severity >= threshold) failing++
		const line = error.posRange.start.line + 1
		const col = error.posRange.start.character + 1
		const endLine = error.posRange.end.line + 1
		const endCol = error.posRange.end.character + 1
		console.log(
			`::${isError ? 'error' : 'warning'} file=${escapeProp(file)},line=${line},col=${col},endLine=${endLine},endColumn=${endCol},title=${escapeProp(`Spyglass (${args.gameVersion})`)}::${escapeData(error.message)}`,
		)
	}
}

const files = analysis?.analyzedFiles ?? diagnosticsByUri.size
console.log(`Spyglass ${args.gameVersion}: ${files} files, ${errorCount} errors, ${warningCount} warnings`)
summary(
	`${failing > 0 ? '🔴' : '🟢'} \`${args.gameVersion}\`: ${files} files, ${errorCount} errors, ${warningCount} warnings`,
)
process.exit(failing > 0 ? EXIT_LINT : 0)
