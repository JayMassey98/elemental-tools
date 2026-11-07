## Change blocks with specific connection (N+E+S+W+U+D) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# N+E+S+W - Fences
$execute if block ~ ~ ~ acacia_fence run return run setblock ~ ~ ~ acacia_fence[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ bamboo_fence run return run setblock ~ ~ ~ bamboo_fence[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ birch_fence run return run setblock ~ ~ ~ birch_fence[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ cherry_fence run return run setblock ~ ~ ~ cherry_fence[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ crimson_fence run return run setblock ~ ~ ~ crimson_fence[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ dark_oak_fence run return run setblock ~ ~ ~ dark_oak_fence[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ jungle_fence run return run setblock ~ ~ ~ jungle_fence[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ mangrove_fence run return run setblock ~ ~ ~ mangrove_fence[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ nether_brick_fence run return run setblock ~ ~ ~ nether_brick_fence[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ oak_fence run return run setblock ~ ~ ~ oak_fence[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ pale_oak_fence run return run setblock ~ ~ ~ pale_oak_fence[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ spruce_fence run return run setblock ~ ~ ~ spruce_fence[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ warped_fence run return run setblock ~ ~ ~ warped_fence[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]