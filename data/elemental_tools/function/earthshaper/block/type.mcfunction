## Alter blocks with specific type (T/B) properties that match the outlined criteria.

# T/B - Bamboo Slab -> Bamboo Mosaic Slab -> ...
$execute if block ~ ~ ~ bamboo_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"bamboo_mosaic_slab[type=$(type),waterlogged=$(waterlogged)]",sound:"bamboo_wood"}
$execute if block ~ ~ ~ bamboo_mosaic_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"bamboo_slab[type=$(type),waterlogged=$(waterlogged)]",sound:"bamboo_wood"}

# T/B - Cobbled Deepslate Slab -> Polished Deepslate Slab -> Deepslate Brick Slab -> Deepslate Tile Slab -> ...
$execute if block ~ ~ ~ cobbled_deepslate_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_deepslate_slab[type=$(type),waterlogged=$(waterlogged)]",sound:"deepslate"}
$execute if block ~ ~ ~ polished_deepslate_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"deepslate_brick_slab[type=$(type),waterlogged=$(waterlogged)]",sound:"deepslate_bricks"}
$execute if block ~ ~ ~ deepslate_brick_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"deepslate_tile_slab[type=$(type),waterlogged=$(waterlogged)]",sound:"deepslate_tiles"}
$execute if block ~ ~ ~ deepslate_tile_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cobbled_deepslate_slab[type=$(type),waterlogged=$(waterlogged)]",sound:"deepslate"}

# T/B - Cobblestone Slab -> Mossy Cobblestone Slab -> ...
$execute if block ~ ~ ~ cobblestone_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"mossy_cobblestone_slab[type=$(type),waterlogged=$(waterlogged)]",sound:"stone"}
$execute if block ~ ~ ~ mossy_cobblestone_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cobblestone_slab[type=$(type),waterlogged=$(waterlogged)]",sound:"stone"}

# T/B - Polished Blackstone Slab -> Polished Blackstone Brick Slab -> ...
$execute if block ~ ~ ~ polished_blackstone_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_blackstone_brick_slab[type=$(type),waterlogged=$(waterlogged)],sound:"stone"}
$execute if block ~ ~ ~ polished_blackstone_brick_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_blackstone_slab[type=$(type),waterlogged=$(waterlogged)],sound:"stone"}

# T/B - Polished Cinnabar Slab -> Cinnabar Brick Slab -> ...
$execute if block ~ ~ ~ polished_cinnabar_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cinnabar_brick_slab[type=$(type),waterlogged=$(waterlogged)],sound:"cinnabar"}
$execute if block ~ ~ ~ cinnabar_brick_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_cinnabar_slab[type=$(type),waterlogged=$(waterlogged)],sound:"cinnabar"}

# T/B - Polished Sulfur Slab -> Sulfur Brick Slab -> ...
$execute if block ~ ~ ~ polished_sulfur_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"sulfur_brick_slab[type=$(type),waterlogged=$(waterlogged)],sound:"sulfur"}
$execute if block ~ ~ ~ sulfur_brick_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_sulfur_slab[type=$(type),waterlogged=$(waterlogged)],sound:"sulfur"}

# T/B - Red Sandstone Slab -> Cut Red Sandstone Slab -> Smooth Red Sandstone Slab -> ...
$execute if block ~ ~ ~ red_sandstone_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cut_red_sandstone_slab[type=$(type),waterlogged=$(waterlogged)],sound:"stone"}
$execute if block ~ ~ ~ cut_red_sandstone_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"smooth_red_sandstone_slab[type=$(type),waterlogged=$(waterlogged)],sound:"stone"}
$execute if block ~ ~ ~ smooth_red_sandstone_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"red_sandstone_slab[type=$(type),waterlogged=$(waterlogged)],sound:"stone"}

# T/B - Sandstone Slab -> Cut Sandstone Slab -> Smooth Sandstone Slab -> ...
$execute if block ~ ~ ~ sandstone_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cut_sandstone_slab[type=$(type),waterlogged=$(waterlogged)],sound:"stone"}
$execute if block ~ ~ ~ cut_sandstone_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"smooth_sandstone_slab[type=$(type),waterlogged=$(waterlogged)],sound:"stone"}
$execute if block ~ ~ ~ smooth_sandstone_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"sandstone_slab[type=$(type),waterlogged=$(waterlogged)],sound:"stone"}

# T/B - Stone Brick Slab -> Mossy Stone Brick Slab -> ...
$execute if block ~ ~ ~ stone_brick_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"mossy_stone_brick_slab[type=$(type),waterlogged=$(waterlogged)]",sound:"stone"}
$execute if block ~ ~ ~ mossy_stone_brick_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"stone_brick_slab[type=$(type),waterlogged=$(waterlogged)]",sound:"stone"}

# T/B - Tuff Brick Slab -> Polished Tuff Slab -> ...
$execute if block ~ ~ ~ tuff_brick_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_tuff_slab[type=$(type),waterlogged=$(waterlogged)]",sound:"polished_tuff"}
$execute if block ~ ~ ~ polished_tuff_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"tuff_brick_slab[type=$(type),waterlogged=$(waterlogged)]",sound:"tuff_bricks"}

# T/B - Quartz Slab -> Smooth Quartz Slab -> ...
$execute if block ~ ~ ~ quartz_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"smooth_quartz_slab[type=$(type),waterlogged=$(waterlogged)]",sound:"stone"}
$execute if block ~ ~ ~ smooth_quartz_slab run return run function elemental_tools:earthshaper/invoke_alter {set_block:"quartz_slab[type=$(type),waterlogged=$(waterlogged)]",sound:"stone"}