## Plumb blocks with specific type (T/B) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# T/B - Slabs
$execute if block ~ ~ ~ #minecraft:slabs run return run function elemental_tools:generic/block/type/slabs {states:2,type:"$(type)",waterlogged:"$(waterlogged_next)"}