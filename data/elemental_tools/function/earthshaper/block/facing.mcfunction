## Alter blocks with specific facing (N/E/S/W/U/D) properties that match the outlined criteria.

# N/E/S/W - Bamboo Stairs -> Bamboo Mosaic Stairs -> ...
execute if block ~ ~ ~ bamboo_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"bamboo_wood"}
execute if block ~ ~ ~ bamboo_mosaic_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"bamboo_wood"}
$execute if block ~ ~ ~ bamboo_stairs run return run setblock ~ ~ ~ bamboo_mosaic_stairs[facing=$(facing),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ bamboo_mosaic_stairs run return run setblock ~ ~ ~ bamboo_stairs[facing=$(facing),waterlogged=$(waterlogged)]

# N/E/S/W - Cobbled Deepslate Stairs -> Polished Deepslate Stairs -> Deepslate Brick Stairs -> Deepslate Tile Stairs -> ...
execute if block ~ ~ ~ cobbled_deepslate_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"deepslate"}
execute if block ~ ~ ~ polished_deepslate_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"deepslate_bricks"}
execute if block ~ ~ ~ deepslate_brick_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"deepslate_tiles"}
execute if block ~ ~ ~ deepslate_tile_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"deepslate"}
$execute if block ~ ~ ~ cobbled_deepslate_stairs run return run setblock ~ ~ ~ polished_deepslate_stairs[facing=$(facing),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ polished_deepslate_stairs run return run setblock ~ ~ ~ deepslate_brick_stairs[facing=$(facing),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ deepslate_brick_stairs run return run setblock ~ ~ ~ deepslate_tile_stairs[facing=$(facing),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ deepslate_tile_stairs run return run setblock ~ ~ ~ cobbled_deepslate_stairs[facing=$(facing),waterlogged=$(waterlogged)]

# N/E/S/W - Cobblestone Stairs -> Mossy Cobblestone Stairs -> ...
execute if block ~ ~ ~ cobblestone_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ mossy_cobblestone_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
$execute if block ~ ~ ~ cobblestone_stairs run return run setblock ~ ~ ~ mossy_cobblestone_stairs[facing=$(facing),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ mossy_cobblestone_stairs run return run setblock ~ ~ ~ cobblestone_stairs[facing=$(facing),waterlogged=$(waterlogged)]

# N/E/S/W - Coral Wall Fans -> Dead Coral Wall Fans -> ...
$execute if block ~ ~ ~ #elemental_tools:coral_wall_fans run return run function elemental_tools:earthshaper/block/facing_all_coral_wall_fans {facing:"$(facing)",prefix_1:"",prefix_2:"dead_",sound:"stone",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:dead_coral_wall_fans run return run function elemental_tools:earthshaper/block/facing_all_coral_wall_fans {facing:"$(facing)",prefix_1:"dead_",prefix_2:"",sound:"wet_grass",waterlogged:"$(waterlogged)"}

# N/E/S/W - Polished Blackstone Stairs -> Polished Blackstone Brick Stairs -> ...
execute if block ~ ~ ~ polished_blackstone_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ polished_blackstone_brick_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
$execute if block ~ ~ ~ polished_blackstone_stairs run return run setblock ~ ~ ~ polished_blackstone_brick_stairs[facing=$(facing),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ polished_blackstone_brick_stairs run return run setblock ~ ~ ~ polished_blackstone_stairs[facing=$(facing),waterlogged=$(waterlogged)]

# N/E/S/W - Polished Cinnabar Stairs -> Cinnabar Brick Stairs -> ...
execute if block ~ ~ ~ polished_cinnabar_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"cinnabar"}
execute if block ~ ~ ~ cinnabar_brick_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"cinnabar"}
$execute if block ~ ~ ~ polished_cinnabar_stairs run return run setblock ~ ~ ~ cinnabar_brick_stairs[facing=$(facing),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ cinnabar_brick_stairs run return run setblock ~ ~ ~ polished_cinnabar_stairs[facing=$(facing),waterlogged=$(waterlogged)]

# N/E/S/W - Polished Sulfur Stairs -> Sulfur Brick Stairs -> ...
execute if block ~ ~ ~ polished_sulfur_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"sulfur"}
execute if block ~ ~ ~ sulfur_brick_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"sulfur"}
$execute if block ~ ~ ~ polished_sulfur_stairs run return run setblock ~ ~ ~ sulfur_brick_stairs[facing=$(facing),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ sulfur_brick_stairs run return run setblock ~ ~ ~ polished_sulfur_stairs[facing=$(facing),waterlogged=$(waterlogged)]

# N/E/S/W - Red Sandstone Stairs -> Smooth Red Sandstone Stairs -> ...
execute if block ~ ~ ~ red_sandstone_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ smooth_red_sandstone_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
$execute if block ~ ~ ~ red_sandstone_stairs run return run setblock ~ ~ ~ smooth_red_sandstone_stairs[facing=$(facing),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ smooth_red_sandstone_stairs run return run setblock ~ ~ ~ red_sandstone_stairs[facing=$(facing),waterlogged=$(waterlogged)]

# N/E/S/W - Sandstone Stairs -> Smooth Sandstone Stairs -> ...
execute if block ~ ~ ~ sandstone_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ smooth_sandstone_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
$execute if block ~ ~ ~ sandstone_stairs run return run setblock ~ ~ ~ smooth_sandstone_stairs[facing=$(facing),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ smooth_sandstone_stairs run return run setblock ~ ~ ~ sandstone_stairs[facing=$(facing),waterlogged=$(waterlogged)]

# N/E/S/W - Stone Brick Stairs -> Mossy Stone Brick Stairs -> ...
execute if block ~ ~ ~ stone_brick_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ mossy_stone_brick_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
$execute if block ~ ~ ~ stone_brick_stairs run return run setblock ~ ~ ~ mossy_stone_brick_stairs[facing=$(facing),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ mossy_stone_brick_stairs run return run setblock ~ ~ ~ stone_brick_stairs[facing=$(facing),waterlogged=$(waterlogged)]

# N/E/S/W - Tuff Brick Stairs -> Polished Tuff Stairs -> ...
execute if block ~ ~ ~ tuff_brick_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"polished_tuff"}
execute if block ~ ~ ~ polished_tuff_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"tuff_bricks"}
$execute if block ~ ~ ~ tuff_brick_stairs run return run setblock ~ ~ ~ polished_tuff_stairs[facing=$(facing),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ polished_tuff_stairs run return run setblock ~ ~ ~ tuff_brick_stairs[facing=$(facing),waterlogged=$(waterlogged)]

# N/E/S/W - Quartz Stairs -> Smooth Quartz Stairs -> ...
execute if block ~ ~ ~ quartz_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ smooth_quartz_stairs run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
$execute if block ~ ~ ~ quartz_stairs run return run setblock ~ ~ ~ smooth_quartz_stairs[facing=$(facing),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ smooth_quartz_stairs run return run setblock ~ ~ ~ quartz_stairs[facing=$(facing),waterlogged=$(waterlogged)]