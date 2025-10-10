## Recursively step forward 0.05 blocks from the player until either a rotatable target block is found or the distance limit is reached (4.5 blocks, or 5 in creative mode).

scoreboard players remove @s elemental_tools_raycast_limit 1
$execute unless score @s elemental_tools_cooldown matches 1.. if block ~ ~ ~ #elemental_tools:rotatable run return run function elemental_tools:update_target_block {tool:"$(tool)"}
$execute if block ~ ~ ~ #elemental_tools:raytrace if score @s elemental_tools_raycast_limit matches 0.. positioned ^ ^ ^0.05 run function elemental_tools:raycast {tool:"$(tool)"}