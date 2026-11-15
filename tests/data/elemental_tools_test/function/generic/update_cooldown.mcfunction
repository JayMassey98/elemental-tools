## Unit test for elemental_tools:generic/update_cooldown.mcfunction.

summon minecraft:armor_stand ~1 ~1 ~1 {Tags:["et_test_holder"]}
scoreboard players set @e[tag=et_test_holder,limit=1] elemental_tools_cooldown 2
execute as @e[tag=et_test_holder,limit=1] run function elemental_tools:generic/update_cooldown
execute unless score @e[tag=et_test_holder,limit=1] elemental_tools_cooldown matches 1 run test fail "update_cooldown did not decrement cooldown from 2 to 1"
kill @e[tag=et_test_holder]
test pass