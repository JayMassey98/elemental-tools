## Plumb blocks with specific axis (X/Y/Z) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# X/Y/Z - Chains
$execute if block ~ ~ ~ #minecraft:chains run return run function elemental_tools:generic/block/axis/chains {states:2,axis:"$(axis)",waterlogged:"$(waterlogged_next)"}