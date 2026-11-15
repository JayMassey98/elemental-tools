## Run every test once, then report. Tests run positioned at the arena test position (8 150 8).

scoreboard players set #passed et_test 0
scoreboard players set #failed et_test 0
scoreboard players set #skipped et_test 0

# Arena floor
fill 0 149 0 15 149 15 minecraft:stone

# run_tests is generated from the files in this pack (.github/scripts/generate_test_runner.py)
function elemental_tools_test:harness/run_tests

# TEMPORARY: print where the tool code stops working (see harness/diagnose)
function elemental_tools_test:harness/diagnose

function elemental_tools_test:harness/finish