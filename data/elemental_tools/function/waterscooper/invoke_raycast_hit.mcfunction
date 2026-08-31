## Invoke the raycast's hit behaviour for the Waterscooper.

# Replace blocks washed away by fluids with water and destroy the block.
execute unless score @s elemental_tools_cooldown matches 1.. if block ~ ~ ~ #minecraft:washed_away_by_fluids run setblock ~ ~ ~ minecraft:water destroy

# Otherwise, place water in the block immediately before the hit.
execute unless score @s elemental_tools_cooldown matches 1.. unless block ~ ~ ~ #minecraft:washed_away_by_fluids positioned ^ ^ ^-0.05 if block ~ ~ ~ #elemental_tools:raycast_waterscooper run setblock ~ ~ ~ minecraft:water

# Invoke the effects of the Waterscooper.
execute unless score @s elemental_tools_cooldown matches 1.. run function elemental_tools:waterscooper/invoke_effects