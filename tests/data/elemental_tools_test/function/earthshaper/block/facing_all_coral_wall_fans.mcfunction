## Unit test for elemental_tools:earthshaper/block/facing_all_coral_wall_fans.mcfunction.

summon minecraft:armor_stand ~1 ~1 ~1 {Tags:["et_test_holder"]}
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:earthshaper/block/facing_all_coral_wall_fans {facing:"north",prefix_1:"true",prefix_2:"true",sound:"true",waterlogged:"true"}
kill @e[tag=et_test_holder]
test pass