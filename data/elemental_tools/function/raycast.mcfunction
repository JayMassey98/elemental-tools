## Recursively step forward 0.05 blocks from the player until either a target block for the active tool is found or the distance limit is reached (4.5 blocks, or 5 in creative mode).

# Remove one raycast step from the remaining distance.
scoreboard players remove @s elemental_tools_raycast_limit 1

# If this is a valid target for the current tool, perform the tool's effects.
$execute unless score @s elemental_tools_cooldown matches 1.. if block ~ ~ ~ #elemental_tools:$(tool) run return run function elemental_tools:update_target_block {tool:"$(tool)"}

# If the ray hits something opaque, perform the tool-specific hit behavior.
$execute unless block ~ ~ ~ #elemental_tools:raycast if score @s elemental_tools_raycast_limit matches 0.. run return run function elemental_tools:$(tool)/raycast_hit

# Continue the raycast.
$execute if block ~ ~ ~ #elemental_tools:raycast if score @s elemental_tools_raycast_limit matches 0.. positioned ^ ^ ^0.05 run function elemental_tools:raycast {tool:"$(tool)"}