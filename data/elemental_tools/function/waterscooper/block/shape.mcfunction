## Plumb blocks with specific shape (NS/EW/SE/SW/NW/NE) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# NS/EW/SE/SW/NW/NE - Standard Rails
$execute if block ~ ~ ~ rail run return run function elemental_tools:generic/block/shape/standard_rails {states:6,shape:"$(shape)",waterlogged:"$(waterlogged_next)"}

# NS/EW - Utility Rails
$execute if block ~ ~ ~ #minecraft:rails run return run function elemental_tools:generic/block/shape/utility_rails {states:2,shape:"$(shape)",waterlogged:"$(waterlogged_next)"}