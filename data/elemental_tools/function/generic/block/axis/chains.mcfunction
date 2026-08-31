## Change blocks with specific axis (X/Y/Z) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# X/Y/Z - Chains
$execute if block ~ ~ ~ copper_chain run return run setblock ~ ~ ~ copper_chain[axis=$(axis),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ exposed_copper_chain run return run setblock ~ ~ ~ exposed_copper_chain[axis=$(axis),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ iron_chain run return run setblock ~ ~ ~ iron_chain[axis=$(axis),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ oxidized_copper_chain run return run setblock ~ ~ ~ oxidized_copper_chain[axis=$(axis),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ waxed_copper_chain run return run setblock ~ ~ ~ waxed_copper_chain[axis=$(axis),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ waxed_exposed_copper_chain run return run setblock ~ ~ ~ waxed_exposed_copper_chain[axis=$(axis),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ waxed_oxidized_copper_chain run return run setblock ~ ~ ~ waxed_oxidized_copper_chain[axis=$(axis),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ waxed_weathered_copper_chain run return run setblock ~ ~ ~ waxed_weathered_copper_chain[axis=$(axis),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ weathered_copper_chain run return run setblock ~ ~ ~ weathered_copper_chain[axis=$(axis),waterlogged=$(waterlogged)]