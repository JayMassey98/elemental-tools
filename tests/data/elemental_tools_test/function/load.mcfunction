## Unit test for elemental_tools:load.mcfunction.

function elemental_tools:load
scoreboard players set #et_test_load elemental_tools_cooldown 1
execute unless score #et_test_load elemental_tools_cooldown matches 1 run test fail "load failed to initialize scoreboard objectives"
scoreboard players reset #et_test_load elemental_tools_cooldown
test pass