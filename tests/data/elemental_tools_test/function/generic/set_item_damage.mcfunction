## Unit test for elemental_tools:generic/set_item_damage.mcfunction.

# The damage goes on the hand that is holding the tool: main hand when the hand score is positive, off hand when negative.
summon minecraft:armor_stand ~0.5 ~ ~0.5 {Tags:["et_test_holder"],NoGravity:1b,Invisible:1b,Marker:1b,equipment:{mainhand:{id:"minecraft:iron_sword",count:1},offhand:{id:"minecraft:iron_sword",count:1}}}

# Main hand
scoreboard players set @e[tag=et_test_holder] elemental_tools_item_hand 1
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:generic/set_item_damage {damage:7}
execute unless entity @e[tag=et_test_holder,nbt={equipment:{mainhand:{components:{"minecraft:damage":7}}}}] run function elemental_tools_test:harness/fail {message:"main hand damage was not set to 7"}
execute if entity @e[tag=et_test_holder,nbt={equipment:{offhand:{components:{"minecraft:damage":7}}}}] run function elemental_tools_test:harness/fail {message:"off hand was damaged by a main hand update"}

# Off hand
scoreboard players set @e[tag=et_test_holder] elemental_tools_item_hand -1
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:generic/set_item_damage {damage:9}
execute unless entity @e[tag=et_test_holder,nbt={equipment:{offhand:{components:{"minecraft:damage":9}}}}] run function elemental_tools_test:harness/fail {message:"off hand damage was not set to 9"}
execute unless entity @e[tag=et_test_holder,nbt={equipment:{mainhand:{components:{"minecraft:damage":7}}}}] run function elemental_tools_test:harness/fail {message:"main hand damage changed during an off hand update"}
