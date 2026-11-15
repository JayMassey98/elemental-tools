## Reset the arena and the per-test flags before a test runs.

scoreboard players set #test_failed et_test 0
scoreboard players set #test_skipped et_test 0
fill 0 150 0 15 159 15 minecraft:air
kill @e[type=minecraft:armor_stand,tag=et_test_holder]
kill @e[type=minecraft:item,x=0,y=150,z=0,dx=16,dy=10,dz=16]