# Elemental Tools tests

Plain data pack tests. No mods and no GameTest framework, so the same tests run
on every Minecraft version. One test file per source function, mirroring `data/`:

    data/elemental_tools/function/windspanner/set_block_state.mcfunction
    tests/data/elemental_tools_test/function/windspanner/set_block_state.mcfunction

## Run them in your own world

1. Put these in your world's `datapacks` folder, next to the Elemental Tools pack: this `tests` folder
   (renamed to `elemental_tools_test`) and ARMOUR's `.armour/harness` folder (renamed to `armour`).
   Then `/reload`.
2. Run `/function armour:harness/start`
3. The results are printed in chat (and in `logs/latest.log`):
   - `ET_FAIL <test> - <what went wrong>` for each failure
   - `ET_SKIP <test>` for tests not written yet (skipped, never counted as passed)
   - `ET_COUNTS passed=.. failed=.. skipped=..` and finally `ET_RESULT PASSED` or `ET_RESULT FAILED`

The tests build their own stone platform at 0 150 0 (inside the chunk at 0 0), so any world works.

## Run them on a headless server (what CI does)

The runner scripts and the shared test harness live in the ARMOUR submodule (`.armour`). After cloning, run
`git submodule update --init`.

    python3 .armour/scripts/run_server_tests.py --version 26.3 --server-url <server.jar url> --sha1 <sha1>

## Writing a test

Create the file, then write commands that set up a block, run the code under test and check the result.
The test runs positioned at the test block position, so `~ ~ ~` is the block under test:

    setblock ~ ~ ~ minecraft:oak_log[axis=x]
    function elemental_tools_test:harness/use_tool {tool:"windspanner"}
    function armour:assert/block {block:"minecraft:oak_log[axis=y]"}

Helpers from this pack:

- `elemental_tools_test:harness/use_tool {tool:"..."}` uses a tool on the block, like a player would

Helpers from ARMOUR's shared harness (see ARMOUR's README for the full list):

- `armour:harness/spawn_holder` summons the armor stand (tag `et_test_holder`) that stands in for the player
- `armour:assert/block {block:"..."}` fails the test unless the block (and the states you list) match
- `armour:harness/fail {message:"..."}` fails the test with a message (no double quotes or @ in messages)
- `armour:harness/todo` marks the test as not written yet

`harness/run_tests.mcfunction` lists all tests, and `data/armour/tags/function/run_tests.json` points the shared
harness at it. Both are generated, so after adding or removing a test file run:

    python3 .armour/scripts/generate_test_runner.py tests
