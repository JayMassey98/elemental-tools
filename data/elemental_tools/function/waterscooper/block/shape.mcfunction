## Plumb blocks with specific shape (NS/EW/SE/SW/NW/NE) properties that match the outlined criteria.

# NS/EW/SE/SW/NW/NE - Standard Rails
$execute if block ~ ~ ~ rail run return run function elemental_tools:generic/block/shape/standard_rails {shape:"$(shape)",waterlogged:"$(waterlogged_next)"}

# NS/EW - Utility Rails
$execute if block ~ ~ ~ #minecraft:rails run return run function elemental_tools:generic/block/shape/utility_rails {shape:"$(shape)",waterlogged:"$(waterlogged_next)"}