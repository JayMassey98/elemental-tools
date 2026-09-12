## Alter blocks with specific type (T/B) properties that match the outlined criteria.

# T/B - Bamboo Slab -> Bamboo Mosaic Slab -> ...
execute if block ~ ~ ~ bamboo_slab run function elemental_tools:earthshaper/invoke_sound {sound:"bamboo_wood"}
execute if block ~ ~ ~ bamboo_mosaic_slab run function elemental_tools:earthshaper/invoke_sound {sound:"bamboo_wood"}
$execute if block ~ ~ ~ bamboo_slab run return run setblock ~ ~ ~ bamboo_mosaic_slab[type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ bamboo_mosaic_slab run return run setblock ~ ~ ~ bamboo_slab[type=$(type),waterlogged=$(waterlogged)]

# T/B - Cobbled Deepslate Slab -> Polished Deepslate Slab -> Deepslate Brick Slab -> Deepslate Tile Slab -> ...
execute if block ~ ~ ~ cobbled_deepslate_slab run function elemental_tools:earthshaper/invoke_sound {sound:"deepslate"}
execute if block ~ ~ ~ polished_deepslate_slab run function elemental_tools:earthshaper/invoke_sound {sound:"deepslate_bricks"}
execute if block ~ ~ ~ deepslate_brick_slab run function elemental_tools:earthshaper/invoke_sound {sound:"deepslate_tiles"}
execute if block ~ ~ ~ deepslate_tile_slab run function elemental_tools:earthshaper/invoke_sound {sound:"deepslate"}
$execute if block ~ ~ ~ cobbled_deepslate_slab run return run setblock ~ ~ ~ polished_deepslate_slab[type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ polished_deepslate_slab run return run setblock ~ ~ ~ deepslate_brick_slab[type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ deepslate_brick_slab run return run setblock ~ ~ ~ deepslate_tile_slab[type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ deepslate_tile_slab run return run setblock ~ ~ ~ cobbled_deepslate_slab[type=$(type),waterlogged=$(waterlogged)]

# T/B - Cobblestone Slab -> Mossy Cobblestone Slab -> ...
execute if block ~ ~ ~ cobblestone_slab run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ mossy_cobblestone_slab run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
$execute if block ~ ~ ~ cobblestone_slab run return run setblock ~ ~ ~ mossy_cobblestone_slab[type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ mossy_cobblestone_slab run return run setblock ~ ~ ~ cobblestone_slab[type=$(type),waterlogged=$(waterlogged)]

# T/B - Polished Blackstone Slab -> Polished Blackstone Brick Slab -> ...
execute if block ~ ~ ~ polished_blackstone_slab run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ polished_blackstone_brick_slab run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
$execute if block ~ ~ ~ polished_blackstone_slab run return run setblock ~ ~ ~ polished_blackstone_brick_slab[type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ polished_blackstone_brick_slab run return run setblock ~ ~ ~ polished_blackstone_slab[type=$(type),waterlogged=$(waterlogged)]

# T/B - Polished Cinnabar Slab -> Cinnabar Brick Slab -> ...
execute if block ~ ~ ~ polished_cinnabar_slab run function elemental_tools:earthshaper/invoke_sound {sound:"cinnabar"}
execute if block ~ ~ ~ cinnabar_brick_slab run function elemental_tools:earthshaper/invoke_sound {sound:"cinnabar"}
$execute if block ~ ~ ~ polished_cinnabar_slab run return run setblock ~ ~ ~ cinnabar_brick_slab[type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ cinnabar_brick_slab run return run setblock ~ ~ ~ polished_cinnabar_slab[type=$(type),waterlogged=$(waterlogged)]

# T/B - Polished Sulfur Slab -> Sulfur Brick Slab -> ...
execute if block ~ ~ ~ polished_sulfur_slab run function elemental_tools:earthshaper/invoke_sound {sound:"sulfur"}
execute if block ~ ~ ~ sulfur_brick_slab run function elemental_tools:earthshaper/invoke_sound {sound:"sulfur"}
$execute if block ~ ~ ~ polished_sulfur_slab run return run setblock ~ ~ ~ sulfur_brick_slab[type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ sulfur_brick_slab run return run setblock ~ ~ ~ polished_sulfur_slab[type=$(type),waterlogged=$(waterlogged)]

# T/B - Red Sandstone Slab -> Cut Red Sandstone Slab -> Smooth Red Sandstone Slab -> ...
execute if block ~ ~ ~ red_sandstone_slab run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ cut_red_sandstone_slab run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ smooth_red_sandstone_slab run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
$execute if block ~ ~ ~ red_sandstone_slab run return run setblock ~ ~ ~ cut_red_sandstone_slab[type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ cut_red_sandstone_slab run return run setblock ~ ~ ~ smooth_red_sandstone_slab[type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ smooth_red_sandstone_slab run return run setblock ~ ~ ~ red_sandstone_slab[type=$(type),waterlogged=$(waterlogged)]

# T/B - Sandstone Slab -> Cut Sandstone Slab -> Smooth Sandstone Slab -> ...
execute if block ~ ~ ~ sandstone_slab run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ cut_sandstone_slab run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ smooth_sandstone_slab run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
$execute if block ~ ~ ~ sandstone_slab run return run setblock ~ ~ ~ cut_sandstone_slab[type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ cut_sandstone_slab run return run setblock ~ ~ ~ smooth_sandstone_slab[type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ smooth_sandstone_slab run return run setblock ~ ~ ~ sandstone_slab[type=$(type),waterlogged=$(waterlogged)]

# T/B - Stone Brick Slab -> Mossy Stone Brick Slab -> ...
execute if block ~ ~ ~ stone_brick_slab run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ mossy_stone_brick_slab run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
$execute if block ~ ~ ~ stone_brick_slab run return run setblock ~ ~ ~ mossy_stone_brick_slab[type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ mossy_stone_brick_slab run return run setblock ~ ~ ~ stone_brick_slab[type=$(type),waterlogged=$(waterlogged)]

# T/B - Tuff Brick Slab -> Polished Tuff Slab -> ...
execute if block ~ ~ ~ tuff_brick_slab run function elemental_tools:earthshaper/invoke_sound {sound:"polished_tuff"}
execute if block ~ ~ ~ polished_tuff_slab run function elemental_tools:earthshaper/invoke_sound {sound:"tuff_bricks"}
$execute if block ~ ~ ~ tuff_brick_slab run return run setblock ~ ~ ~ polished_tuff_slab[type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ polished_tuff_slab run return run setblock ~ ~ ~ tuff_brick_slab[type=$(type),waterlogged=$(waterlogged)]

# T/B - Quartz Slab -> Smooth Quartz Slab -> ...
execute if block ~ ~ ~ quartz_slab run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ smooth_quartz_slab run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
$execute if block ~ ~ ~ quartz_slab run return run setblock ~ ~ ~ smooth_quartz_slab[type=$(type),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ smooth_quartz_slab run return run setblock ~ ~ ~ quartz_slab[type=$(type),waterlogged=$(waterlogged)]