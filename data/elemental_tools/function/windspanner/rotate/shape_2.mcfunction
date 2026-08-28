## Rotate the target block in shape NS/EW/SE/SW/NW/NE order.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# NS/EW - Rails
$execute if block ~ ~ ~ activator_rail[waterlogged=false] run return run setblock ~ ~ ~ activator_rail[waterlogged=false,shape=$(shape_2_next)]
$execute if block ~ ~ ~ activator_rail[waterlogged=true] run return run setblock ~ ~ ~ activator_rail[waterlogged=true,shape=$(shape_2_next)]
$execute if block ~ ~ ~ detector_rail[waterlogged=false] run return run setblock ~ ~ ~ detector_rail[waterlogged=false,shape=$(shape_2_next)]
$execute if block ~ ~ ~ detector_rail[waterlogged=true] run return run setblock ~ ~ ~ detector_rail[waterlogged=true,shape=$(shape_2_next)]
$execute if block ~ ~ ~ powered_rail[waterlogged=false] run return run setblock ~ ~ ~ powered_rail[waterlogged=false,shape=$(shape_2_next)]
$execute if block ~ ~ ~ powered_rail[waterlogged=true] run return run setblock ~ ~ ~ powered_rail[waterlogged=true,shape=$(shape_2_next)]

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states_2)

# NS/EW/SE/SW/NW/NE - Rails
$execute if block ~ ~ ~ rail[waterlogged=false] run return run setblock ~ ~ ~ rail[waterlogged=false,shape=$(shape_6_next)]
$execute if block ~ ~ ~ rail[waterlogged=true] run return run setblock ~ ~ ~ rail[waterlogged=true,shape=$(shape_6_next)]