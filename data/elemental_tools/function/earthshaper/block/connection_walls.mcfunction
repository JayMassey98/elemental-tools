## Alter blocks with specific connection (N+E+S+W+U+D) properties that match the outlined criteria.

# Set Position
scoreboard players set @s elemental_tools_durability_chance_maximum 2

# N+E+S+W+U - Cinnabar Brick Wall -> Polished Cinnabar Wall -> ...
$execute if block ~ ~ ~ cinnabar_brick_wall run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_cinnabar_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]",sound:"cinnabar"}
$execute if block ~ ~ ~ polished_cinnabar_wall run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cinnabar_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]",sound:"cinnabar"}

# N+E+S+W+U - Cobblestone Wall -> Mossy Cobblestone Wall -> ...
$execute if block ~ ~ ~ cobblestone_wall run return run function elemental_tools:earthshaper/invoke_alter {set_block:"mossy_cobblestone_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]",sound:"stone"}
$execute if block ~ ~ ~ mossy_cobblestone_wall run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cobblestone_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]",sound:"stone"}

# N+E+S+W+U - Polished Blackstone Wall -> Polished Blackstone Brick Wall -> ...
$execute if block ~ ~ ~ polished_blackstone_wall run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_blackstone_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]",sound:"stone"}
$execute if block ~ ~ ~ polished_blackstone_brick_wall run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_blackstone_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]",sound:"stone"}

# N+E+S+W+U - Stone Brick Wall -> Mossy Stone Brick Wall -> ...
$execute if block ~ ~ ~ stone_brick_wall run return run function elemental_tools:earthshaper/invoke_alter {set_block:"mossy_stone_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]",sound:"stone"}
$execute if block ~ ~ ~ mossy_stone_brick_wall run return run function elemental_tools:earthshaper/invoke_alter {set_block:"stone_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]",sound:"stone"}

# N+E+S+W+U - Sulfur Brick Wall -> Polished Sulfur Wall -> ...
$execute if block ~ ~ ~ sulfur_brick_wall run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_sulfur_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]",sound:"sulfur"}
$execute if block ~ ~ ~ polished_sulfur_wall run return run function elemental_tools:earthshaper/invoke_alter {set_block:"sulfur_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]",sound:"sulfur"}

# N+E+S+W+U - Tuff Brick Wall -> Polished Tuff Wall -> ...
$execute if block ~ ~ ~ tuff_brick_wall run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_tuff_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]",sound:"polished_tuff"}
$execute if block ~ ~ ~ polished_tuff_wall run return run function elemental_tools:earthshaper/invoke_alter {set_block:"tuff_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]",sound:"tuff_bricks"}

# Set Position
scoreboard players set @s elemental_tools_durability_chance_maximum 4

# N+E+S+W+U - Cobble Deepslate Wall -> Polished Deepslate Wall -> Deepslate Brick Wall -> Deepslate Tile Wall -> ...
$execute if block ~ ~ ~ cobbled_deepslate_wall run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_deepslate_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]",sound:"deepslate"}
$execute if block ~ ~ ~ polished_deepslate_wall run return run function elemental_tools:earthshaper/invoke_alter {set_block:"deepslate_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]",sound:"deepslate_bricks"}
$execute if block ~ ~ ~ deepslate_brick_wall run return run function elemental_tools:earthshaper/invoke_alter {set_block:"deepslate_tile_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]",sound:"deepslate_tiles"}
$execute if block ~ ~ ~ deepslate_tile_wall run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cobbled_deepslate_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]",sound:"deepslate"}