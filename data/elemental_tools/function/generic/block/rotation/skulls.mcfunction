## Change blocks with specific rotation (0-15) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# 0-15 - Skulls
$execute if block ~ ~ ~ creeper_head run return run setblock ~ ~ ~ creeper_head[powered=$(powered),rotation=$(rotation)]
$execute if block ~ ~ ~ dragon_head run return run setblock ~ ~ ~ dragon_head[powered=$(powered),rotation=$(rotation)]
$execute if block ~ ~ ~ piglin_head run return run setblock ~ ~ ~ piglin_head[powered=$(powered),rotation=$(rotation)]
$execute if block ~ ~ ~ player_head run return run setblock ~ ~ ~ player_head[powered=$(powered),rotation=$(rotation)]
$execute if block ~ ~ ~ skeleton_skull run return run setblock ~ ~ ~ skeleton_skull[powered=$(powered),rotation=$(rotation)]
$execute if block ~ ~ ~ wither_skeleton_skull run return run setblock ~ ~ ~ wither_skeleton_skull[powered=$(powered),rotation=$(rotation)]
$execute if block ~ ~ ~ zombie_head run return run setblock ~ ~ ~ zombie_head[powered=$(powered),rotation=$(rotation)]