## Plumb the target block with rotation 0-15 to be (un)waterlogged.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# 0-15 - General
$execute if block ~ ~ ~ acacia_sign run return run setblock ~ ~ ~ acacia_sign[rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ bamboo_sign run return run setblock ~ ~ ~ bamboo_sign[rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ birch_sign run return run setblock ~ ~ ~ birch_sign[rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ cherry_sign run return run setblock ~ ~ ~ cherry_sign[rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ crimson_sign run return run setblock ~ ~ ~ crimson_sign[rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dark_oak_sign run return run setblock ~ ~ ~ dark_oak_sign[rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ jungle_sign run return run setblock ~ ~ ~ jungle_sign[rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ mangrove_sign run return run setblock ~ ~ ~ mangrove_sign[rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ oak_sign run return run setblock ~ ~ ~ oak_sign[rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ pale_oak_sign run return run setblock ~ ~ ~ pale_oak_sign[rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ spruce_sign run return run setblock ~ ~ ~ spruce_sign[rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ warped_sign run return run setblock ~ ~ ~ warped_sign[rotation=$(rotation),waterlogged=$(waterlogged_next)]

# 0-15 - Hanging Signs
$execute if block ~ ~ ~ acacia_hanging_sign[attached=false] run return run setblock ~ ~ ~ acacia_hanging_sign[attached=false,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ acacia_hanging_sign[attached=true] run return run setblock ~ ~ ~ acacia_hanging_sign[attached=true,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ bamboo_hanging_sign[attached=false] run return run setblock ~ ~ ~ bamboo_hanging_sign[attached=false,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ bamboo_hanging_sign[attached=true] run return run setblock ~ ~ ~ bamboo_hanging_sign[attached=true,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ birch_hanging_sign[attached=false] run return run setblock ~ ~ ~ birch_hanging_sign[attached=false,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ birch_hanging_sign[attached=true] run return run setblock ~ ~ ~ birch_hanging_sign[attached=true,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ cherry_hanging_sign[attached=false] run return run setblock ~ ~ ~ cherry_hanging_sign[attached=false,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ cherry_hanging_sign[attached=true] run return run setblock ~ ~ ~ cherry_hanging_sign[attached=true,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ crimson_hanging_sign[attached=false] run return run setblock ~ ~ ~ crimson_hanging_sign[attached=false,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ crimson_hanging_sign[attached=true] run return run setblock ~ ~ ~ crimson_hanging_sign[attached=true,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dark_oak_hanging_sign[attached=false] run return run setblock ~ ~ ~ dark_oak_hanging_sign[attached=false,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dark_oak_hanging_sign[attached=true] run return run setblock ~ ~ ~ dark_oak_hanging_sign[attached=true,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ jungle_hanging_sign[attached=false] run return run setblock ~ ~ ~ jungle_hanging_sign[attached=false,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ jungle_hanging_sign[attached=true] run return run setblock ~ ~ ~ jungle_hanging_sign[attached=true,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ mangrove_hanging_sign[attached=false] run return run setblock ~ ~ ~ mangrove_hanging_sign[attached=false,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ mangrove_hanging_sign[attached=true] run return run setblock ~ ~ ~ mangrove_hanging_sign[attached=true,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ oak_hanging_sign[attached=false] run return run setblock ~ ~ ~ oak_hanging_sign[attached=false,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ oak_hanging_sign[attached=true] run return run setblock ~ ~ ~ oak_hanging_sign[attached=true,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ pale_oak_hanging_sign[attached=false] run return run setblock ~ ~ ~ pale_oak_hanging_sign[attached=false,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ pale_oak_hanging_sign[attached=true] run return run setblock ~ ~ ~ pale_oak_hanging_sign[attached=true,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ spruce_hanging_sign[attached=false] run return run setblock ~ ~ ~ spruce_hanging_sign[attached=false,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ spruce_hanging_sign[attached=true] run return run setblock ~ ~ ~ spruce_hanging_sign[attached=true,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ warped_hanging_sign[attached=false] run return run setblock ~ ~ ~ warped_hanging_sign[attached=false,rotation=$(rotation),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ warped_hanging_sign[attached=true] run return run setblock ~ ~ ~ warped_hanging_sign[attached=true,rotation=$(rotation),waterlogged=$(waterlogged_next)]