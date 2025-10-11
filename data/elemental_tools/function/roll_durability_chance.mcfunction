## Determine the durability chance based on the target block's total number of possible rotations.

# For positions 1-3, set chance between 1 and 3.
execute if score @s elemental_tools_block_position matches 1..3 store result score @s elemental_tools_durability_chance run return run random value 1..3

# For positions 4-9, check block tags for rotation chances, else fallback to between 1 and 4.
execute if score @s elemental_tools_block_position matches 4..9 if block ~ ~ ~ #elemental_tools:positions_8 store result score @s elemental_tools_durability_chance run return run random value 1..8
execute if score @s elemental_tools_block_position matches 4..9 if block ~ ~ ~ #elemental_tools:positions_6 store result score @s elemental_tools_durability_chance run return run random value 1..6
execute if score @s elemental_tools_block_position matches 4..9 if block ~ ~ ~ #elemental_tools:positions_5 store result score @s elemental_tools_durability_chance run return run random value 1..5
execute if score @s elemental_tools_block_position matches 4..9 unless score @s elemental_tools_durability_chance = @s elemental_tools_durability_chance store result score @s elemental_tools_durability_chance run return run random value 1..4

# For positions 10-25, set chance between 1 and 16.
execute if score @s elemental_tools_block_position matches 10..25 store result score @s elemental_tools_durability_chance run return run random value 1..16

# For positions 26-32, check block tags for rotation chances, else fallback to between 1 and 2.
execute if score @s elemental_tools_block_position matches 26..32 if block ~ ~ ~ #elemental_tools:positions_6 store result score @s elemental_tools_durability_chance run return run random value 1..6
execute if score @s elemental_tools_block_position matches 26..32 unless score @s elemental_tools_durability_chance = @s elemental_tools_durability_chance store result score @s elemental_tools_durability_chance run return run random value 1..2

# For positions 33-34, set chance between 1 and 2.
execute if score @s elemental_tools_block_position matches 33..34 store result score @s elemental_tools_durability_chance run return run random value 1..2