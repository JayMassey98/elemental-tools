## Unit test for elemental_tools:waterscooper/invoke_waterscooper.mcfunction.

summon minecraft:armor_stand ~1 ~1 ~1 {Tags:["et_test_holder"]}
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:waterscooper/invoke_waterscooper
kill @e[tag=et_test_holder]
test pass