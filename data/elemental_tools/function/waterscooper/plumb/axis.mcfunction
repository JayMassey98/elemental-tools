## Plumb the target block with axis X/Y/Z to be (un)waterlogged.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# X/Y/Z - General
$execute if block ~ ~ ~ copper_chain run return run setblock ~ ~ ~ copper_chain[waterlogged=$(waterlogged_next),axis=$(axis)]
$execute if block ~ ~ ~ exposed_copper_chain run return run setblock ~ ~ ~ exposed_copper_chain[waterlogged=$(waterlogged_next),axis=$(axis)]
$execute if block ~ ~ ~ iron_chain run return run setblock ~ ~ ~ iron_chain[waterlogged=$(waterlogged_next),axis=$(axis)]
$execute if block ~ ~ ~ oxidized_copper_chain run return run setblock ~ ~ ~ oxidized_copper_chain[waterlogged=$(waterlogged_next),axis=$(axis)]
$execute if block ~ ~ ~ waxed_copper_chain run return run setblock ~ ~ ~ waxed_copper_chain[waterlogged=$(waterlogged_next),axis=$(axis)]
$execute if block ~ ~ ~ waxed_exposed_copper_chain run return run setblock ~ ~ ~ waxed_exposed_copper_chain[waterlogged=$(waterlogged_next),axis=$(axis)]
$execute if block ~ ~ ~ waxed_oxidized_copper_chain run return run setblock ~ ~ ~ waxed_oxidized_copper_chain[waterlogged=$(waterlogged_next),axis=$(axis)]
$execute if block ~ ~ ~ waxed_weathered_copper_chain run return run setblock ~ ~ ~ waxed_weathered_copper_chain[waterlogged=$(waterlogged_next),axis=$(axis)]
$execute if block ~ ~ ~ weathered_copper_chain run return run setblock ~ ~ ~ weathered_copper_chain[waterlogged=$(waterlogged_next),axis=$(axis)]