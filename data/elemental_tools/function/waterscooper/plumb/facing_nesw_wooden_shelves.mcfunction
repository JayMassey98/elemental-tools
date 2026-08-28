target block with facing N/E/S/W/U/D to be (un)waterlogged.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# N/E/S/W - Wooden Shelves
$execute if block ~ ~ ~ acacia_shelf run return run setblock ~ ~ ~ acacia_shelf[facing=$(facing),powered=$(powered),side_chain=$(side_chain),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ bamboo_shelf run return run setblock ~ ~ ~ bamboo_shelf[facing=$(facing),powered=$(powered),side_chain=$(side_chain),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ birch_shelf run return run setblock ~ ~ ~ birch_shelf[facing=$(facing),powered=$(powered),side_chain=$(side_chain),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ cherry_shelf run return run setblock ~ ~ ~ cherry_shelf[facing=$(facing),powered=$(powered),side_chain=$(side_chain),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ crimson_shelf run return run setblock ~ ~ ~ crimson_shelf[facing=$(facing),powered=$(powered),side_chain=$(side_chain),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dark_oak_shelf run return run setblock ~ ~ ~ dark_oak_shelf[facing=$(facing),powered=$(powered),side_chain=$(side_chain),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ jungle_shelf run return run setblock ~ ~ ~ jungle_shelf[facing=$(facing),powered=$(powered),side_chain=$(side_chain),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ mangrove_shelf run return run setblock ~ ~ ~ mangrove_shelf[facing=$(facing),powered=$(powered),side_chain=$(side_chain),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ oak_shelf run return run setblock ~ ~ ~ oak_shelf[facing=$(facing),powered=$(powered),side_chain=$(side_chain),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ pale_oak_shelf run return run setblock ~ ~ ~ pale_oak_shelf[facing=$(facing),powered=$(powered),side_chain=$(side_chain),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ spruce_shelf run return run setblock ~ ~ ~ spruce_shelf[facing=$(facing),powered=$(powered),side_chain=$(side_chain),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ warped_shelf run return run setblock ~ ~ ~ warped_shelf[facing=$(facing),powered=$(powered),side_chain=$(side_chain),waterlogged=$(waterlogged_next)]