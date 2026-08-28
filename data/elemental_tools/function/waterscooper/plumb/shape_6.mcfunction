## Plumb the target block with shape NS/EW/SE/SW/NW/NE to be (un)waterlogged.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# NS/EW/SE/SW/NW/NE - General
$execute if block ~ ~ ~ rail run return run setblock ~ ~ ~ rail[shape=$(shape),waterlogged=$(waterlogged_next)]