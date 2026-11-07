## Change blocks with specific facing (N/E/S/W/U/D) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# N/E/S/W - Buttons
$execute if block ~ ~ ~ acacia_button run return run setblock ~ ~ ~ acacia_button[face=$(face),facing=$(facing),powered=$(powered)]
$execute if block ~ ~ ~ bamboo_button run return run setblock ~ ~ ~ bamboo_button[face=$(face),facing=$(facing),powered=$(powered)]
$execute if block ~ ~ ~ birch_button run return run setblock ~ ~ ~ birch_button[face=$(face),facing=$(facing),powered=$(powered)]
$execute if block ~ ~ ~ cherry_button run return run setblock ~ ~ ~ cherry_button[face=$(face),facing=$(facing),powered=$(powered)]
$execute if block ~ ~ ~ crimson_button run return run setblock ~ ~ ~ crimson_button[face=$(face),facing=$(facing),powered=$(powered)]
$execute if block ~ ~ ~ dark_oak_button run return run setblock ~ ~ ~ dark_oak_button[face=$(face),facing=$(facing),powered=$(powered)]
$execute if block ~ ~ ~ jungle_button run return run setblock ~ ~ ~ jungle_button[face=$(face),facing=$(facing),powered=$(powered)]
$execute if block ~ ~ ~ mangrove_button run return run setblock ~ ~ ~ mangrove_button[face=$(face),facing=$(facing),powered=$(powered)]
$execute if block ~ ~ ~ oak_button run return run setblock ~ ~ ~ oak_button[face=$(face),facing=$(facing),powered=$(powered)]
$execute if block ~ ~ ~ pale_oak_button run return run setblock ~ ~ ~ pale_oak_button[face=$(face),facing=$(facing),powered=$(powered)]
$execute if block ~ ~ ~ polished_blackstone_button run return run setblock ~ ~ ~ polished_blackstone_button[face=$(face),facing=$(facing),powered=$(powered)]
$execute if block ~ ~ ~ spruce_button run return run setblock ~ ~ ~ spruce_button[face=$(face),facing=$(facing),powered=$(powered)]
$execute if block ~ ~ ~ stone_button run return run setblock ~ ~ ~ stone_button[face=$(face),facing=$(facing),powered=$(powered)]
$execute if block ~ ~ ~ warped_button run return run setblock ~ ~ ~ warped_button[face=$(face),facing=$(facing),powered=$(powered)]