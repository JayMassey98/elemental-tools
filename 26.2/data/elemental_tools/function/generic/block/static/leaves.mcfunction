## Change blocks with specific static properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# Leaves
$execute if block ~ ~ ~ acacia_leaves run return run setblock ~ ~ ~ acacia_leaves[distance=$(distance),persistent=$(persistent),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ azalea_leaves run return run setblock ~ ~ ~ azalea_leaves[distance=$(distance),persistent=$(persistent),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ birch_leaves run return run setblock ~ ~ ~ birch_leaves[distance=$(distance),persistent=$(persistent),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ cherry_leaves run return run setblock ~ ~ ~ cherry_leaves[distance=$(distance),persistent=$(persistent),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ dark_oak_leaves run return run setblock ~ ~ ~ dark_oak_leaves[distance=$(distance),persistent=$(persistent),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ flowering_azalea_leaves run return run setblock ~ ~ ~ flowering_azalea_leaves[distance=$(distance),persistent=$(persistent),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ jungle_leaves run return run setblock ~ ~ ~ jungle_leaves[distance=$(distance),persistent=$(persistent),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ mangrove_leaves run return run setblock ~ ~ ~ mangrove_leaves[distance=$(distance),persistent=$(persistent),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ oak_leaves run return run setblock ~ ~ ~ oak_leaves[distance=$(distance),persistent=$(persistent),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ pale_oak_leaves run return run setblock ~ ~ ~ pale_oak_leaves[distance=$(distance),persistent=$(persistent),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ spruce_leaves run return run setblock ~ ~ ~ spruce_leaves[distance=$(distance),persistent=$(persistent),waterlogged=$(waterlogged)]