## Unit test for elemental_tools:generic/set_durability_chance.mcfunction.

function armour:harness/spawn_holder

# Chance Always 1
scoreboard players set @e[tag=armour.holder] elemental_tools_durability_chance_maximum 1
execute as @e[tag=armour.holder,limit=1] at @s run function elemental_tools:generic/set_durability_chance
execute unless entity @e[tag=armour.holder,scores={elemental_tools_durability_chance=1}] run function armour:harness/fail {message:"maximum 1 should give chance 1"}

# Chance Between 1 - 5
scoreboard players set @e[tag=armour.holder] elemental_tools_durability_chance_maximum 5
scoreboard players set @e[tag=armour.holder] elemental_tools_durability_chance 0
execute as @e[tag=armour.holder,limit=1] at @s run function elemental_tools:generic/set_durability_chance
execute unless entity @e[tag=armour.holder,scores={elemental_tools_durability_chance=1..5}] run function armour:harness/fail {message:"maximum 5 should give a chance between 1 and 5"}

# Chance Between 1 - 16
scoreboard players set @e[tag=armour.holder] elemental_tools_durability_chance_maximum 16
scoreboard players set @e[tag=armour.holder] elemental_tools_durability_chance 0
execute as @e[tag=armour.holder,limit=1] at @s run function elemental_tools:generic/set_durability_chance
execute unless entity @e[tag=armour.holder,scores={elemental_tools_durability_chance=1..16}] run function armour:harness/fail {message:"maximum 16 should give a chance between 1 and 16"}