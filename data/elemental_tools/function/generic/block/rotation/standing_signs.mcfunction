## Change blocks with specific rotation (0-15) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# 0-15 - Standing Signs
$execute if block ~ ~ ~ acacia_sign run return run setblock ~ ~ ~ acacia_sign[rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ bamboo_sign run return run setblock ~ ~ ~ bamboo_sign[rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ birch_sign run return run setblock ~ ~ ~ birch_sign[rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ cherry_sign run return run setblock ~ ~ ~ cherry_sign[rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ crimson_sign run return run setblock ~ ~ ~ crimson_sign[rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ dark_oak_sign run return run setblock ~ ~ ~ dark_oak_sign[rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ jungle_sign run return run setblock ~ ~ ~ jungle_sign[rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ mangrove_sign run return run setblock ~ ~ ~ mangrove_sign[rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ oak_sign run return run setblock ~ ~ ~ oak_sign[rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ pale_oak_sign run return run setblock ~ ~ ~ pale_oak_sign[rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ spruce_sign run return run setblock ~ ~ ~ spruce_sign[rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ warped_sign run return run setblock ~ ~ ~ warped_sign[rotation=$(rotation),waterlogged=$(waterlogged)]