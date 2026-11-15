## Unit test for elemental_tools:generic/set_durability_chance.mcfunction.

summon minecraft:armor_stand ~1 ~1 ~1 {Tags:["et_test_holder"]}
execute as @e[tag=et_test_holder,limit=1] run function elemental_tools:generic/set_durability_chance
execute unless score @e[tag=et_test_holder,limit=1] elemental_tools_durability_chance matches 0..1 run test fail "set_durability_chance out of expected 0..1 range"
kill @e[tag=et_test_holder]
test pass