## Plumb blocks with specific axis (X/Y/Z) properties that match the outlined criteria.

# X/Y/Z - Chains
$execute if block ~ ~ ~ #minecraft:chains run return run function elemental_tools:generic/block/axis/chains {axis:"$(axis)",waterlogged:"$(waterlogged_next)"}