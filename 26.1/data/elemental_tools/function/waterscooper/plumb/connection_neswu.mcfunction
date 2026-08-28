## Plumb the target block with connection N+E+S+W+U+D to be (un)waterlogged.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# N+E+S+W+U - General
$execute if block ~ ~ ~ andesite_wall run return run setblock ~ ~ ~ andesite_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ blackstone_wall run return run setblock ~ ~ ~ blackstone_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ brick_wall run return run setblock ~ ~ ~ brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ cobbled_deepslate_wall run return run setblock ~ ~ ~ cobbled_deepslate_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ cobblestone_wall run return run setblock ~ ~ ~ cobblestone_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ deepslate_brick_wall run return run setblock ~ ~ ~ deepslate_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ deepslate_tile_wall run return run setblock ~ ~ ~ deepslate_tile_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ diorite_wall run return run setblock ~ ~ ~ diorite_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ end_stone_brick_wall run return run setblock ~ ~ ~ end_stone_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ granite_wall run return run setblock ~ ~ ~ granite_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ mossy_cobblestone_wall run return run setblock ~ ~ ~ mossy_cobblestone_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ mossy_stone_brick_wall run return run setblock ~ ~ ~ mossy_stone_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ mud_brick_wall run return run setblock ~ ~ ~ mud_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ nether_brick_wall run return run setblock ~ ~ ~ nether_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ polished_blackstone_brick_wall run return run setblock ~ ~ ~ polished_blackstone_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ polished_blackstone_wall run return run setblock ~ ~ ~ polished_blackstone_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ polished_deepslate_wall run return run setblock ~ ~ ~ polished_deepslate_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ polished_tuff_wall run return run setblock ~ ~ ~ polished_tuff_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ prismarine_wall run return run setblock ~ ~ ~ prismarine_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ red_nether_brick_wall run return run setblock ~ ~ ~ red_nether_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ red_sandstone_wall run return run setblock ~ ~ ~ red_sandstone_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ resin_brick_wall run return run setblock ~ ~ ~ resin_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sandstone_wall run return run setblock ~ ~ ~ sandstone_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ stone_brick_wall run return run setblock ~ ~ ~ stone_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ tuff_brick_wall run return run setblock ~ ~ ~ tuff_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ tuff_wall run return run setblock ~ ~ ~ tuff_wall[east=$(east),north=$(north),south=$(south),up=$(up),west=$(west),waterlogged=$(waterlogged_next)]