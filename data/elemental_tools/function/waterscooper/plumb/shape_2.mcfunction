## Plumb the target block with shape NS/EW/SE/SW/NW/NE to be (un)waterlogged.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# NS/EW - General
$execute if block ~ ~ ~ activator_rail run return run setblock ~ ~ ~ activator_rail[shape=$(shape),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ detector_rail run return run setblock ~ ~ ~ detector_rail[shape=$(shape),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ powered_rail run return run setblock ~ ~ ~ powered_rail[shape=$(shape),waterlogged=$(waterlogged_next)]

# NS/EW/SE/SW/NW/NE - Rails
$execute if block ~ ~ ~ rail run return run setblock ~ ~ ~ rail[shape=$(shape),waterlogged=$(waterlogged_next)]