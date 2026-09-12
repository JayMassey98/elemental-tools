## Alter blocks with specific axis (X/Y/Z) properties that match the outlined criteria.

# X/Y/Z - Bamboo Block -> Stripped Bamboo Block -> ...
execute if block ~ ~ ~ bamboo_block run function elemental_tools:earthshaper/invoke_sound {sound:"bamboo_wood"}
execute if block ~ ~ ~ stripped_bamboo_block run function elemental_tools:earthshaper/invoke_sound {sound:"bamboo_wood"}
$execute if block ~ ~ ~ bamboo_block run return run setblock ~ ~ ~ stripped_bamboo_block[axis=$(axis)]
$execute if block ~ ~ ~ stripped_bamboo_block run return run setblock ~ ~ ~ bamboo_block[axis=$(axis)]

# X/Y/Z - Log -> Stripped Log -> Wood -> Stripped Wood -> ...
$execute if block ~ ~ ~ #minecraft:acacia_logs run return run function elemental_tools:earthshaper/block/axis_logs_that_burn {axis:"$(axis)",log:"acacia",sound:"wood"}
$execute if block ~ ~ ~ #minecraft:birch_logs run return run function elemental_tools:earthshaper/block/axis_logs_that_burn {axis:"$(axis)",log:"birch",sound:"wood"}
$execute if block ~ ~ ~ #minecraft:cherry_logs run return run function elemental_tools:earthshaper/block/axis_logs_that_burn {axis:"$(axis)",log:"cherry",sound:"cherry_wood"}
$execute if block ~ ~ ~ #minecraft:dark_oak_logs run return run function elemental_tools:earthshaper/block/axis_logs_that_burn {axis:"$(axis)",log:"dark_oak",sound:"wood"}
$execute if block ~ ~ ~ #minecraft:jungle_logs run return run function elemental_tools:earthshaper/block/axis_logs_that_burn {axis:"$(axis)",log:"jungle",sound:"wood"}
$execute if block ~ ~ ~ #minecraft:mangrove_logs run return run function elemental_tools:earthshaper/block/axis_logs_that_burn {axis:"$(axis)",log:"mangrove",sound:"wood"}
$execute if block ~ ~ ~ #minecraft:oak_logs run return run function elemental_tools:earthshaper/block/axis_logs_that_burn {axis:"$(axis)",log:"oak",sound:"wood"}
$execute if block ~ ~ ~ #minecraft:pale_oak_logs run return run function elemental_tools:earthshaper/block/axis_logs_that_burn {axis:"$(axis)",log:"pale_oak",sound:"wood"}
$execute if block ~ ~ ~ #minecraft:spruce_logs run return run function elemental_tools:earthshaper/block/axis_logs_that_burn {axis:"$(axis)",log:"spruce",sound:"wood"}

# X/Y/Z - Stem -> Stripped Stem -> Hyphae -> Stripped Hyphae -> ...
$execute if block ~ ~ ~ #minecraft:crimson_stems run return run function elemental_tools:earthshaper/block/axis_stems {axis:"$(axis)",stem:"crimson",sound:"nether_wood"}
$execute if block ~ ~ ~ #minecraft:warped_stems run return run function elemental_tools:earthshaper/block/axis_stems {axis:"$(axis)",stem:"warped",sound:"nether_wood"}