## Plumb the target block with facing N/E/S/W/U/D to be (un)waterlogged.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# N/E/S/W/U/D - General
$execute if block ~ ~ ~ amethyst_cluster run return run setblock ~ ~ ~ amethyst_cluster[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ large_amethyst_bud run return run setblock ~ ~ ~ large_amethyst_bud[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ medium_amethyst_bud run return run setblock ~ ~ ~ medium_amethyst_bud[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ small_amethyst_bud run return run setblock ~ ~ ~ small_amethyst_bud[facing=$(facing),waterlogged=$(waterlogged_next)]

# N/E/S/W/U/D - Lightning Rods
$execute if block ~ ~ ~ exposed_lightning_rod[powered=false] run return run setblock ~ ~ ~ exposed_lightning_rod[powered=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ exposed_lightning_rod[powered=true] run return run setblock ~ ~ ~ exposed_lightning_rod[powered=true,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ lightning_rod[powered=false] run return run setblock ~ ~ ~ lightning_rod[powered=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ lightning_rod[powered=true] run return run setblock ~ ~ ~ lightning_rod[powered=true,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ oxidized_lightning_rod[powered=false] run return run setblock ~ ~ ~ oxidized_lightning_rod[powered=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ oxidized_lightning_rod[powered=true] run return run setblock ~ ~ ~ oxidized_lightning_rod[powered=true,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_exposed_lightning_rod[powered=false] run return run setblock ~ ~ ~ waxed_exposed_lightning_rod[powered=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_exposed_lightning_rod[powered=true] run return run setblock ~ ~ ~ waxed_exposed_lightning_rod[powered=true,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_lightning_rod[powered=false] run return run setblock ~ ~ ~ waxed_lightning_rod[powered=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_lightning_rod[powered=true] run return run setblock ~ ~ ~ waxed_lightning_rod[powered=true,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_oxidized_lightning_rod[powered=false] run return run setblock ~ ~ ~ waxed_oxidized_lightning_rod[powered=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_oxidized_lightning_rod[powered=true] run return run setblock ~ ~ ~ waxed_oxidized_lightning_rod[powered=true,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_weathered_lightning_rod[powered=false] run return run setblock ~ ~ ~ waxed_weathered_lightning_rod[powered=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_weathered_lightning_rod[powered=true] run return run setblock ~ ~ ~ waxed_weathered_lightning_rod[powered=true,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ weathered_lightning_rod[powered=false] run return run setblock ~ ~ ~ weathered_lightning_rod[powered=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ weathered_lightning_rod[powered=true] run return run setblock ~ ~ ~ weathered_lightning_rod[powered=true,facing=$(facing),waterlogged=$(waterlogged_next)]