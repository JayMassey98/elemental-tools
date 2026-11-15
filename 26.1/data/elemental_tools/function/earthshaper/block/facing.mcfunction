## Alter blocks with specific facing (N/E/S/W/U/D) properties that match the outlined criteria.

# Set Position
scoreboard players set @s elemental_tools_durability_chance_maximum 2

# N/E/S/W - Bamboo Stairs -> Bamboo Mosaic Stairs -> ...
$execute if block ~ ~ ~ bamboo_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"bamboo_mosaic_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"bamboo_wood"}
$execute if block ~ ~ ~ bamboo_mosaic_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"bamboo_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"bamboo_wood"}

# N/E/S/W - Carved Pumpkin -> Pumpkin
execute if block ~ ~ ~ carved_pumpkin run return run function elemental_tools:earthshaper/invoke_alter {set_block:"pumpkin",sound:"wood"}

# N/E/S/W - Cobblestone Stairs -> Mossy Cobblestone Stairs -> ...
$execute if block ~ ~ ~ cobblestone_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"mossy_cobblestone_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"stone"}
$execute if block ~ ~ ~ mossy_cobblestone_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cobblestone_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"stone"}

# N/E/S/W - Coral Wall Fans -> Dead Coral Wall Fans -> ...
$execute if block ~ ~ ~ #elemental_tools:coral_wall_fans run return run function elemental_tools:earthshaper/block/facing_all_coral_wall_fans {facing:"$(facing)",prefix_1:"",prefix_2:"dead_",sound:"stone",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:dead_coral_wall_fans run return run function elemental_tools:earthshaper/block/facing_all_coral_wall_fans {facing:"$(facing)",prefix_1:"dead_",prefix_2:"",sound:"wet_grass",waterlogged:"$(waterlogged)"}

# N/E/S/W - Polished Blackstone Stairs -> Polished Blackstone Brick Stairs -> ...
$execute if block ~ ~ ~ polished_blackstone_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_blackstone_brick_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"stone"}
$execute if block ~ ~ ~ polished_blackstone_brick_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_blackstone_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"stone"}

# N/E/S/W - Red Sandstone Stairs -> Smooth Red Sandstone Stairs -> ...
$execute if block ~ ~ ~ red_sandstone_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"smooth_red_sandstone_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"stone"}
$execute if block ~ ~ ~ smooth_red_sandstone_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"red_sandstone_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"stone"}

# N/E/S/W - Sandstone Stairs -> Smooth Sandstone Stairs -> ...
$execute if block ~ ~ ~ sandstone_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"smooth_sandstone_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"stone"}
$execute if block ~ ~ ~ smooth_sandstone_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"sandstone_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"stone"}

# N/E/S/W - Stone Brick Stairs -> Mossy Stone Brick Stairs -> ...
$execute if block ~ ~ ~ stone_brick_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"mossy_stone_brick_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"stone"}
$execute if block ~ ~ ~ mossy_stone_brick_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"stone_brick_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"stone"}

# N/E/S/W - Tuff Brick Stairs -> Polished Tuff Stairs -> ...
$execute if block ~ ~ ~ tuff_brick_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_tuff_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"polished_tuff"}
$execute if block ~ ~ ~ polished_tuff_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"tuff_brick_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"tuff_bricks"}

# N/E/S/W - Quartz Stairs -> Smooth Quartz Stairs -> ...
$execute if block ~ ~ ~ quartz_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"smooth_quartz_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"stone"}
$execute if block ~ ~ ~ smooth_quartz_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"quartz_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"stone"}

# Set Position
scoreboard players set @s elemental_tools_durability_chance_maximum 4

# N/E/S/W - Cobbled Deepslate Stairs -> Polished Deepslate Stairs -> Deepslate Brick Stairs -> Deepslate Tile Stairs -> ...
$execute if block ~ ~ ~ cobbled_deepslate_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_deepslate_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"deepslate"}
$execute if block ~ ~ ~ polished_deepslate_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"deepslate_brick_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"deepslate_bricks"}
$execute if block ~ ~ ~ deepslate_brick_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"deepslate_tile_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"deepslate_tiles"}
$execute if block ~ ~ ~ deepslate_tile_stairs run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cobbled_deepslate_stairs[facing=$(facing),waterlogged=$(waterlogged)]",sound:"deepslate"}