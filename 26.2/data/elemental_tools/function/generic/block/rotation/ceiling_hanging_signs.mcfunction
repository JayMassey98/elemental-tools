## Change blocks with specific rotation (0-15) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# 0-15 - Ceiling Hanging Signs
$execute if block ~ ~ ~ acacia_hanging_sign run return run setblock ~ ~ ~ acacia_hanging_sign[attached=$(attached),rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ bamboo_hanging_sign run return run setblock ~ ~ ~ bamboo_hanging_sign[attached=$(attached),rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ birch_hanging_sign run return run setblock ~ ~ ~ birch_hanging_sign[attached=$(attached),rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ cherry_hanging_sign run return run setblock ~ ~ ~ cherry_hanging_sign[attached=$(attached),rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ crimson_hanging_sign run return run setblock ~ ~ ~ crimson_hanging_sign[attached=$(attached),rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ dark_oak_hanging_sign run return run setblock ~ ~ ~ dark_oak_hanging_sign[attached=$(attached),rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ jungle_hanging_sign run return run setblock ~ ~ ~ jungle_hanging_sign[attached=$(attached),rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ mangrove_hanging_sign run return run setblock ~ ~ ~ mangrove_hanging_sign[attached=$(attached),rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ oak_hanging_sign run return run setblock ~ ~ ~ oak_hanging_sign[attached=$(attached),rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ pale_oak_hanging_sign run return run setblock ~ ~ ~ pale_oak_hanging_sign[attached=$(attached),rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ spruce_hanging_sign run return run setblock ~ ~ ~ spruce_hanging_sign[attached=$(attached),rotation=$(rotation),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ warped_hanging_sign run return run setblock ~ ~ ~ warped_hanging_sign[attached=$(attached),rotation=$(rotation),waterlogged=$(waterlogged)]