# Elemental Tools tests

Plain data pack tests. No mods and no GameTest framework, so the same tests run
on every Minecraft version. One test file per source function, mirroring `data/`:

    data/elemental_tools/function/windspanner/set_block_state.mcfunction
    tests/data/elemental_tools_test/function/windspanner/set_block_state.mcfunction

## Run them in your own world

1. Put this `tests` folder in your world's `datapacks` folder (rename it to `elemental_tools_test`)
   next to the Elemental Tools pack, then `/reload`.
2. Run `/function elemental_tools_test:harness/start`
3. The results are printed in chat (and in `logs/latest.log`):
   - `ET_FAIL <test> - <what went wrong>` for each failure
   - `ET_SKIP <test>` for tests not written yet (skipped, never counted as passed)
   - `ET_COUNTS passed=.. failed=.. skipped=..` and finally `ET_RESULT PASSED` or `ET_RESULT FAILED`

The tests build their own stone platform at 0 150 0 (inside the chunk at 0 0), so any world works.

## Run them on a headless server (what CI does)

    python3 .github/scripts/run_server_tests.py --version 26.3 --server-url <server.jar url> --sha1 <sha1>

## Writing a test

Create the file, then write commands that set up a block, run the code under test and check the result.
The test runs positioned at the test block position, so `~ ~ ~` is the block under test:

    setblock ~ ~ ~ minecraft:oak_log[axis=x]
    function elemental_tools_test:harness/use_tool {tool:"windspanner"}
    function elemental_tools_test:assert/block {block:"minecraft:oak_log[axis=y]"}

Helpers:

- `harness/use_tool {tool:"..."}` uses a tool on the block, like a player would
- `harness/spawn_holder` summons the armor stand (tag `et_test_holder`) that stands in for the player
- `assert/block {block:"..."}` fails the test unless the block (and the states you list) match
- `harness/fail {message:"..."}` fails the test with a message (no double quotes or @ in messages)
- `harness/todo` marks the test as not written yet

`harness/run_tests.mcfunction` lists all tests. It is generated, so after adding or removing a test file run:

    python3 .github/scripts/generate_test_runner.py tests
