## Rotate the target block in shape NS/EW/SE/SW/NW/NE order.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# NS/EW/SE/SW/NW/NE - Rails
$execute if block ~ ~ ~ rail[waterlogged=false] run return run setblock ~ ~ ~ rail[waterlogged=false,shape=$(shape_6_next)]
$execute if block ~ ~ ~ rail[waterlogged=true] run return run setblock ~ ~ ~ rail[waterlogged=true,shape=$(shape_6_next)]