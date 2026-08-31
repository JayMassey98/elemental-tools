## Change blocks with specific facing (N/E/S/W/U/D) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# N/E/S/W - Copper Chests
$execute if block ~ ~ ~ copper_chest run return run setblock ~ ~ ~ copper_chest[facing=$(facing),type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ exposed_copper_chest run return run setblock ~ ~ ~ exposed_copper_chest[facing=$(facing),type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ oxidized_copper_chest run return run setblock ~ ~ ~ oxidized_copper_chest[facing=$(facing),type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ waxed_copper_chest run return run setblock ~ ~ ~ waxed_copper_chest[facing=$(facing),type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ waxed_exposed_copper_chest run return run setblock ~ ~ ~ waxed_exposed_copper_chest[facing=$(facing),type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ waxed_oxidized_copper_chest run return run setblock ~ ~ ~ waxed_oxidized_copper_chest[facing=$(facing),type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ waxed_weathered_copper_chest run return run setblock ~ ~ ~ waxed_weathered_copper_chest[facing=$(facing),type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ weathered_copper_chest run return run setblock ~ ~ ~ weathered_copper_chest[facing=$(facing),type=$(type),waterlogged=$(waterlogged)]