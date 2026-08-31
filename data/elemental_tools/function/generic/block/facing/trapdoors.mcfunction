## Change blocks with specific facing (N/E/S/W/U/D) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# N/E/S/W - Trapdoors
$execute if block ~ ~ ~ acacia_trapdoor run return run setblock ~ ~ ~ acacia_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ bamboo_trapdoor run return run setblock ~ ~ ~ bamboo_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ birch_trapdoor run return run setblock ~ ~ ~ birch_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ cherry_trapdoor run return run setblock ~ ~ ~ cherry_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ copper_trapdoor run return run setblock ~ ~ ~ copper_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ crimson_trapdoor run return run setblock ~ ~ ~ crimson_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ dark_oak_trapdoor run return run setblock ~ ~ ~ dark_oak_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ exposed_copper_trapdoor run return run setblock ~ ~ ~ exposed_copper_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ iron_trapdoor run return run setblock ~ ~ ~ iron_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ jungle_trapdoor run return run setblock ~ ~ ~ jungle_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ mangrove_trapdoor run return run setblock ~ ~ ~ mangrove_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ oak_trapdoor run return run setblock ~ ~ ~ oak_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ oxidized_copper_trapdoor run return run setblock ~ ~ ~ oxidized_copper_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ pale_oak_trapdoor run return run setblock ~ ~ ~ pale_oak_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ spruce_trapdoor run return run setblock ~ ~ ~ spruce_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ warped_trapdoor run return run setblock ~ ~ ~ warped_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ waxed_copper_trapdoor run return run setblock ~ ~ ~ waxed_copper_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ waxed_exposed_copper_trapdoor run return run setblock ~ ~ ~ waxed_exposed_copper_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ waxed_oxidized_copper_trapdoor run return run setblock ~ ~ ~ waxed_oxidized_copper_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ waxed_weathered_copper_trapdoor run return run setblock ~ ~ ~ waxed_weathered_copper_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ weathered_copper_trapdoor run return run setblock ~ ~ ~ weathered_copper_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged)]