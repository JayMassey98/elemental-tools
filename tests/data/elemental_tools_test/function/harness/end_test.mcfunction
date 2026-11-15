## Count the result of the test that just ran.

execute if score #test_skipped et_test matches 1 run function elemental_tools_test:harness/report_skip with storage et_test:run
execute if score #test_skipped et_test matches 1 run return run scoreboard players add #skipped et_test 1
execute if score #test_failed et_test matches 1 run return run scoreboard players add #failed et_test 1
scoreboard players add #passed et_test 1