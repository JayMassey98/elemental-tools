## Plumb blocks with specific facing (N/E/S/W/U/D) properties that match the outlined criteria.

# N/E/S/W/U/D - General
$execute if block ~ ~ ~ amethyst_cluster run return run setblock ~ ~ ~ amethyst_cluster[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ large_amethyst_bud run return run setblock ~ ~ ~ large_amethyst_bud[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ medium_amethyst_bud run return run setblock ~ ~ ~ medium_amethyst_bud[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ small_amethyst_bud run return run setblock ~ ~ ~ small_amethyst_bud[facing=$(facing),waterlogged=$(waterlogged_next)]

# N/E/S/W/U/D - Lightning Rods
$execute if block ~ ~ ~ #minecraft:lightning_rods[powered=false] run return run function elemental_tools:generic/block/facing/lightning_rods {facing:"$(facing)",powered:"false",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:lightning_rods[powered=true] run return run function elemental_tools:generic/block/facing/lightning_rods {facing:"$(facing)",powered:"true",waterlogged:"$(waterlogged_next)"}