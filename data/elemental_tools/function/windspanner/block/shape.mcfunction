## Rotate blocks with specific shape (NS/EW/SE/SW/NW/NE) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# NS/EW/SE/SW/NW/NE - Standard Rails
$execute if block ~ ~ ~ rail[waterlogged=false] run return run function elemental_tools:generic/block/shape/standard_rails {states:6,shape:"$(shape_6_next)",waterlogged:"false"}
$execute if block ~ ~ ~ rail[waterlogged=true] run return run function elemental_tools:generic/block/shape/standard_rails {states:6,shape:"$(shape_6_next)",waterlogged:"true"}

# NS/EW - Utility Rails
$execute if block ~ ~ ~ #minecraft:rails[waterlogged=false] run return run function elemental_tools:generic/block/shape/utility_rails {states:2,shape:"$(shape_2_next)",waterlogged:"false"}
$execute if block ~ ~ ~ #minecraft:rails[waterlogged=true] run return run function elemental_tools:generic/block/shape/utility_rails {states:2,shape:"$(shape_2_next)",waterlogged:"true"}