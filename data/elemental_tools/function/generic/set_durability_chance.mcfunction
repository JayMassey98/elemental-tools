## Set the durability chance based on the total number of states the target block can cycle through.

# Check if durability_chance_maximum is set to 1, as the random value command cannot generate a valid random integer between 1 and 1 (inclusive).
execute if score @s elemental_tools_durability_chance_maximum matches 1 run return run scoreboard players set @s elemental_tools_durability_chance 1

# Set the durability_chance to a random integer between 1 and durability_chance_maximum (inclusive).
execute if score @s elemental_tools_durability_chance_maximum matches 2 store result score @s elemental_tools_durability_chance run return run random value 1..2
execute if score @s elemental_tools_durability_chance_maximum matches 3 store result score @s elemental_tools_durability_chance run return run random value 1..3
execute if score @s elemental_tools_durability_chance_maximum matches 4 store result score @s elemental_tools_durability_chance run return run random value 1..4
execute if score @s elemental_tools_durability_chance_maximum matches 5 store result score @s elemental_tools_durability_chance run return run random value 1..5
execute if score @s elemental_tools_durability_chance_maximum matches 6 store result score @s elemental_tools_durability_chance run return run random value 1..6
execute if score @s elemental_tools_durability_chance_maximum matches 7 store result score @s elemental_tools_durability_chance run return run random value 1..7
execute if score @s elemental_tools_durability_chance_maximum matches 8 store result score @s elemental_tools_durability_chance run return run random value 1..8
execute if score @s elemental_tools_durability_chance_maximum matches 16 store result score @s elemental_tools_durability_chance run return run random value 1..16