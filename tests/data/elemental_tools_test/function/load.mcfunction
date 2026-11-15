## Unit test for elemental_tools:load.mcfunction.

# The scoreboard objectives exist after loading, and loading twice is harmless.
function elemental_tools:load
function elemental_tools:load
scoreboard players set #et_test_load elemental_tools_cooldown 1
scoreboard players set #et_test_load elemental_tools_durability_chance 1
scoreboard players set #et_test_load elemental_tools_durability_chance_maximum 1
scoreboard players set #et_test_load elemental_tools_item_damage 1
scoreboard players set #et_test_load elemental_tools_item_hand 1
scoreboard players set #et_test_load elemental_tools_raycast_limit 1
execute unless score #et_test_load elemental_tools_cooldown matches 1 run function elemental_tools_test:harness/fail {message:"objective elemental_tools_cooldown is missing"}
execute unless score #et_test_load elemental_tools_durability_chance matches 1 run function elemental_tools_test:harness/fail {message:"objective elemental_tools_durability_chance is missing"}
execute unless score #et_test_load elemental_tools_durability_chance_maximum matches 1 run function elemental_tools_test:harness/fail {message:"objective elemental_tools_durability_chance_maximum is missing"}
execute unless score #et_test_load elemental_tools_item_damage matches 1 run function elemental_tools_test:harness/fail {message:"objective elemental_tools_item_damage is missing"}
execute unless score #et_test_load elemental_tools_item_hand matches 1 run function elemental_tools_test:harness/fail {message:"objective elemental_tools_item_hand is missing"}
execute unless score #et_test_load elemental_tools_raycast_limit matches 1 run function elemental_tools_test:harness/fail {message:"objective elemental_tools_raycast_limit is missing"}
scoreboard players reset #et_test_load
