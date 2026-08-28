## Plumb the target block with connection N+E+S+W+U+D to be (un)waterlogged.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# N+E+S+W+U+D - General
$execute if block ~ ~ ~ resin_clump run return run setblock ~ ~ ~ resin_clump[down=$(down),east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_vein run return run setblock ~ ~ ~ sculk_vein[down=$(down),east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]