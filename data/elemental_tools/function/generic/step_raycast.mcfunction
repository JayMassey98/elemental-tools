## Step the raycast forward 0.05 blocks from the player until either a valid target block is found or the distance limit is reached (4.5 blocks, or 5 in creative mode).

# Remove one raycast step from the remaining distance.
scoreboard players remove @s elemental_tools_raycast_limit 1

# If this is a valid target for the current tool, perform the tool's actions.
$execute unless score @s elemental_tools_cooldown matches 1.. if block ~ ~ ~ #elemental_tools:triggers_$(tool) run return run function elemental_tools:generic/update_target_block {tool:"$(tool)"}

# If the ray hits something opaque, perform the tool-specific hit behavior.
$execute unless block ~ ~ ~ #elemental_tools:raycast_$(tool) if score @s elemental_tools_raycast_limit matches 0.. run return run function elemental_tools:$(tool)/invoke_raycast_hit

# Continue stepping the raycast forward by calling this function again.
$execute if block ~ ~ ~ #elemental_tools:raycast_$(tool) if score @s elemental_tools_raycast_limit matches 0.. positioned ^ ^ ^0.05 run function elemental_tools:generic/step_raycast {tool:"$(tool)"}