## Change blocks with specific facing (N/E/S/W/U/D) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# N/E/S/W/U/D - Shulker Boxes
$execute if block ~ ~ ~ black_shulker_box run return run setblock ~ ~ ~ black_shulker_box[facing=$(facing)]
$execute if block ~ ~ ~ blue_shulker_box run return run setblock ~ ~ ~ blue_shulker_box[facing=$(facing)]
$execute if block ~ ~ ~ brown_shulker_box run return run setblock ~ ~ ~ brown_shulker_box[facing=$(facing)]
$execute if block ~ ~ ~ cyan_shulker_box run return run setblock ~ ~ ~ cyan_shulker_box[facing=$(facing)]
$execute if block ~ ~ ~ gray_shulker_box run return run setblock ~ ~ ~ gray_shulker_box[facing=$(facing)]
$execute if block ~ ~ ~ green_shulker_box run return run setblock ~ ~ ~ green_shulker_box[facing=$(facing)]
$execute if block ~ ~ ~ light_blue_shulker_box run return run setblock ~ ~ ~ light_blue_shulker_box[facing=$(facing)]
$execute if block ~ ~ ~ light_gray_shulker_box run return run setblock ~ ~ ~ light_gray_shulker_box[facing=$(facing)]
$execute if block ~ ~ ~ lime_shulker_box run return run setblock ~ ~ ~ lime_shulker_box[facing=$(facing)]
$execute if block ~ ~ ~ magenta_shulker_box run return run setblock ~ ~ ~ magenta_shulker_box[facing=$(facing)]
$execute if block ~ ~ ~ orange_shulker_box run return run setblock ~ ~ ~ orange_shulker_box[facing=$(facing)]
$execute if block ~ ~ ~ pink_shulker_box run return run setblock ~ ~ ~ pink_shulker_box[facing=$(facing)]
$execute if block ~ ~ ~ purple_shulker_box run return run setblock ~ ~ ~ purple_shulker_box[facing=$(facing)]
$execute if block ~ ~ ~ red_shulker_box run return run setblock ~ ~ ~ red_shulker_box[facing=$(facing)]
$execute if block ~ ~ ~ shulker_box run return run setblock ~ ~ ~ shulker_box[facing=$(facing)]
$execute if block ~ ~ ~ white_shulker_box run return run setblock ~ ~ ~ white_shulker_box[facing=$(facing)]
$execute if block ~ ~ ~ yellow_shulker_box run return run setblock ~ ~ ~ yellow_shulker_box[facing=$(facing)]