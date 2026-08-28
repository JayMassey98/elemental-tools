## Plumb the target block with facing N/E/S/W/U/D to be (un)waterlogged.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# N/E/S/W - Trapdoors
$execute if block ~ ~ ~ minecraft:acacia_trapdoor run return run setblock ~ ~ ~ acacia_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:bamboo_trapdoor run return run setblock ~ ~ ~ bamboo_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:birch_trapdoor run return run setblock ~ ~ ~ birch_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:cherry_trapdoor run return run setblock ~ ~ ~ cherry_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:copper_trapdoor run return run setblock ~ ~ ~ copper_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:crimson_trapdoor run return run setblock ~ ~ ~ crimson_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:dark_oak_trapdoor run return run setblock ~ ~ ~ dark_oak_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:exposed_copper_trapdoor run return run setblock ~ ~ ~ exposed_copper_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:iron_trapdoor run return run setblock ~ ~ ~ iron_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:jungle_trapdoor run return run setblock ~ ~ ~ jungle_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:mangrove_trapdoor run return run setblock ~ ~ ~ mangrove_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:oak_trapdoor run return run setblock ~ ~ ~ oak_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:oxidized_copper_trapdoor run return run setblock ~ ~ ~ oxidized_copper_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:pale_oak_trapdoor run return run setblock ~ ~ ~ pale_oak_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:spruce_trapdoor run return run setblock ~ ~ ~ spruce_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:warped_trapdoor run return run setblock ~ ~ ~ warped_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:waxed_copper_trapdoor run return run setblock ~ ~ ~ waxed_copper_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:waxed_exposed_copper_trapdoor run return run setblock ~ ~ ~ waxed_exposed_copper_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_trapdoor run return run setblock ~ ~ ~ waxed_oxidized_copper_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:waxed_weathered_copper_trapdoor run return run setblock ~ ~ ~ waxed_weathered_copper_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ minecraft:weathered_copper_trapdoor run return run setblock ~ ~ ~ weathered_copper_trapdoor[facing=$(facing),half=$(half),open=$(open),waterlogged=$(waterlogged_next)]