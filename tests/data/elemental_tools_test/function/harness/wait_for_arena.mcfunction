## Wait until the arena chunk is loaded, then run the tests (gives up after about 20 seconds).

scoreboard players add #attempts et_test 1
execute if score #attempts et_test matches 200.. run return run say ET_ERROR the test arena chunk never loaded
execute unless loaded 8 150 8 run return run schedule function elemental_tools_test:harness/wait_for_arena 2t
function elemental_tools_test:harness/run