## Alter blocks with specific connection (N+E+S+W+U+D) properties that match the outlined criteria.

# N+E+S+W+U - Cinnabar Brick Wall -> Polished Cinnabar Wall -> ...
execute if block ~ ~ ~ cinnabar_brick_wall run function elemental_tools:earthshaper/invoke_sound {sound:"cinnabar"}
execute if block ~ ~ ~ polished_cinnabar_wall run function elemental_tools:earthshaper/invoke_sound {sound:"cinnabar"}
$execute if block ~ ~ ~ cinnabar_brick_wall run return run setblock ~ ~ ~ polished_cinnabar_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ polished_cinnabar_wall run return run setblock ~ ~ ~ cinnabar_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]

# N+E+S+W+U - Cobblestone Wall -> Mossy Cobblestone Wall -> ...
execute if block ~ ~ ~ cobblestone_wall run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ mossy_cobblestone_wall run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
$execute if block ~ ~ ~ cobblestone_wall run return run setblock ~ ~ ~ mossy_cobblestone_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ mossy_cobblestone_wall run return run setblock ~ ~ ~ cobblestone_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]

# N+E+S+W+U - Cobble Deepslate Wall -> Polished Deepslate Wall -> Deepslate Brick Wall -> Deepslate Tile Wall -> ...
execute if block ~ ~ ~ cobbled_deepslate_wall run function elemental_tools:earthshaper/invoke_sound {sound:"deepslate"}
execute if block ~ ~ ~ polished_deepslate_wall run function elemental_tools:earthshaper/invoke_sound {sound:"deepslate_bricks"}
execute if block ~ ~ ~ deepslate_brick_wall run function elemental_tools:earthshaper/invoke_sound {sound:"deepslate_tiles"}
execute if block ~ ~ ~ deepslate_tile_wall run function elemental_tools:earthshaper/invoke_sound {sound:"deepslate"}
$execute if block ~ ~ ~ cobbled_deepslate_wall run return run setblock ~ ~ ~ polished_deepslate_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ polished_deepslate_wall run return run setblock ~ ~ ~ deepslate_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ deepslate_brick_wall run return run setblock ~ ~ ~ deepslate_tile_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ deepslate_tile_wall run return run setblock ~ ~ ~ cobbled_deepslate_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]

# N+E+S+W+U - Polished Blackstone Wall -> Polished Blackstone Brick Wall -> ...
execute if block ~ ~ ~ polished_blackstone_wall run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ polished_blackstone_brick_wall run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
$execute if block ~ ~ ~ polished_blackstone_wall run return run setblock ~ ~ ~ polished_blackstone_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ polished_blackstone_brick_wall run return run setblock ~ ~ ~ polished_blackstone_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]

# N+E+S+W+U - Stone Brick Wall -> Mossy Stone Brick Wall -> ...
execute if block ~ ~ ~ stone_brick_wall run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ mossy_stone_brick_wall run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
$execute if block ~ ~ ~ stone_brick_wall run return run setblock ~ ~ ~ mossy_stone_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ mossy_stone_brick_wall run return run setblock ~ ~ ~ stone_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]

# N+E+S+W+U - Sulfur Brick Wall -> Polished Sulfur Wall -> ...
execute if block ~ ~ ~ sulfur_brick_wall run function elemental_tools:earthshaper/invoke_sound {sound:"sulfur"}
execute if block ~ ~ ~ polished_sulfur_wall run function elemental_tools:earthshaper/invoke_sound {sound:"sulfur"}
$execute if block ~ ~ ~ sulfur_brick_wall run return run setblock ~ ~ ~ polished_sulfur_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ polished_sulfur_wall run return run setblock ~ ~ ~ sulfur_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]

# N+E+S+W+U - Tuff Brick Wall -> Polished Tuff Wall -> ...
execute if block ~ ~ ~ tuff_brick_wall run function elemental_tools:earthshaper/invoke_sound {sound:"polished_tuff"}
execute if block ~ ~ ~ polished_tuff_wall run function elemental_tools:earthshaper/invoke_sound {sound:"tuff_bricks"}
$execute if block ~ ~ ~ tuff_brick_wall run return run setblock ~ ~ ~ polished_tuff_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]
$execute if block ~ ~ ~ polished_tuff_wall run return run setblock ~ ~ ~ tuff_brick_wall[east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]