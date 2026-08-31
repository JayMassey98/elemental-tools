## Change blocks with specific connection (N+E+S+W+U+D) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# N+E+S+W - Bars
$execute if block ~ ~ ~ copper_bars run return run setblock ~ ~ ~ copper_bars[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ exposed_copper_bars run return run setblock ~ ~ ~ exposed_copper_bars[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ iron_bars run return run setblock ~ ~ ~ iron_bars[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ oxidized_copper_bars run return run setblock ~ ~ ~ oxidized_copper_bars[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ waxed_copper_bars run return run setblock ~ ~ ~ waxed_copper_bars[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ waxed_exposed_copper_bars run return run setblock ~ ~ ~ waxed_exposed_copper_bars[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ waxed_oxidized_copper_bars run return run setblock ~ ~ ~ waxed_oxidized_copper_bars[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ waxed_weathered_copper_bars run return run setblock ~ ~ ~ waxed_weathered_copper_bars[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ weathered_copper_bars run return run setblock ~ ~ ~ weathered_copper_bars[east=$(east),north=$(north),south=$(south),waterlogged=$(waterlogged),west=$(west)]