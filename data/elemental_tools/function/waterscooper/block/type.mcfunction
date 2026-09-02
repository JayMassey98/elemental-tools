## Plumb blocks with specific type (T/B) properties that match the outlined criteria.

# T/B - Slabs
$execute if block ~ ~ ~ #minecraft:slabs run return run function elemental_tools:generic/block/type/slabs {type:"$(type)",waterlogged:"$(waterlogged_next)"}