## Unit test for elemental_tools:generic/set_item_damage.mcfunction.

summon minecraft:armor_stand ~1 ~1 ~1 {Tags:["et_test_holder"]}
item replace entity @e[tag=et_test_holder,limit=1] weapon.mainhand with minecraft:breeze_rod[minecraft:custom_data={windspanner:1b},minecraft:max_damage=256,minecraft:damage=0]
scoreboard players set @e[tag=et_test_holder,limit=1] elemental_tools_item_hand 1
execute as @e[tag=et_test_holder,limit=1] run function elemental_tools:generic/set_item_damage {damage:1}
execute unless items entity @e[tag=et_test_holder,limit=1] weapon.mainhand *[minecraft:damage=1] run test fail "set_item_damage failed on weapon.mainhand"
kill @e[tag=et_test_holder]
test pass