## Alter blocks with specific static properties that match the outlined criteria.

# Set Position
scoreboard players set @s elemental_tools_durability_chance_maximum 2

# Azalea -> Flowering Azalea -> ...
execute if block ~ ~ ~ azalea run return run function elemental_tools:earthshaper/invoke_alter {set_block:"flowering_azalea",sound:"flowering_azalea"}
execute if block ~ ~ ~ flowering_azalea run return run function elemental_tools:earthshaper/invoke_alter {set_block:"azalea",sound:"azalea"}

# Bamboo Mosaic -> Bamboo Planks -> ...
execute if block ~ ~ ~ bamboo_mosaic run return run function elemental_tools:earthshaper/invoke_alter {set_block:"bamboo_planks",sound:"bamboo_wood"}
execute if block ~ ~ ~ bamboo_planks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"bamboo_mosaic",sound:"bamboo_wood"}

# Cobblestone -> Mossy Cobblestone -> ...
execute if block ~ ~ ~ cobblestone run return run function elemental_tools:earthshaper/invoke_alter {set_block:"mossy_cobblestone",sound:"stone"}
execute if block ~ ~ ~ mossy_cobblestone run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cobblestone",sound:"stone"}

# Concrete --> Concrete Powders -> ...
execute if block ~ ~ ~ #minecraft:concrete run return run function elemental_tools:earthshaper/block/static_all_concrete_and_powders {sound:"sand"}
execute if block ~ ~ ~ #minecraft:concrete_powders run return run function elemental_tools:earthshaper/block/static_all_concrete_and_powders {sound:"stone"}

# Corals -> Dead Corals -> ...
$execute if block ~ ~ ~ #minecraft:corals run return run function elemental_tools:earthshaper/block/static_all_corals {sound:"stone",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:dead_corals run return run function elemental_tools:earthshaper/block/static_all_corals {sound:"wet_grass",waterlogged:"$(waterlogged)"}

# Coral Blocks -> Dead Coral Blocks -> ...
execute if block ~ ~ ~ #minecraft:coral_blocks run return run function elemental_tools:earthshaper/block/static_all_coral_blocks {sound:"stone"}
execute if block ~ ~ ~ #elemental_tools:dead_coral_blocks run return run function elemental_tools:earthshaper/block/static_all_coral_blocks {sound:"coral_block"}

# Cut Coppers -> Chiseled Coppers -> ...
execute if block ~ ~ ~ #elemental_tools:copper_chiseled_and_cut run return run function elemental_tools:earthshaper/block/static_copper_chiseled_and_cut {sound:"copper"}

# Leaves
execute if block ~ ~ ~ #elemental_tools:generic_leaves run function elemental_tools:earthshaper/invoke_sound {sound:"grass"}
execute if block ~ ~ ~ minecraft:azalea_leaves run function elemental_tools:earthshaper/invoke_sound {sound:"azalea_leaves"}
execute if block ~ ~ ~ minecraft:cherry_leaves run function elemental_tools:earthshaper/invoke_sound {sound:"cherry_leaves"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=1,persistent=false] run return run function elemental_tools:generic/block/static/leaves {distance:1,persistent:"true",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=1,persistent=true] run return run function elemental_tools:generic/block/static/leaves {distance:1,persistent:"false",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=2,persistent=false] run return run function elemental_tools:generic/block/static/leaves {distance:2,persistent:"true",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=2,persistent=true] run return run function elemental_tools:generic/block/static/leaves {distance:2,persistent:"false",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=3,persistent=false] run return run function elemental_tools:generic/block/static/leaves {distance:3,persistent:"true",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=3,persistent=true] run return run function elemental_tools:generic/block/static/leaves {distance:3,persistent:"false",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=4,persistent=false] run return run function elemental_tools:generic/block/static/leaves {distance:4,persistent:"true",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=4,persistent=true] run return run function elemental_tools:generic/block/static/leaves {distance:4,persistent:"false",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=5,persistent=false] run return run function elemental_tools:generic/block/static/leaves {distance:1,persistent:"true",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=5,persistent=true] run return run function elemental_tools:generic/block/static/leaves {distance:1,persistent:"false",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=6,persistent=false] run return run function elemental_tools:generic/block/static/leaves {distance:2,persistent:"true",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=6,persistent=true] run return run function elemental_tools:generic/block/static/leaves {distance:2,persistent:"false",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=7,persistent=false] run return run function elemental_tools:generic/block/static/leaves {distance:3,persistent:"true",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=7,persistent=true] run return run function elemental_tools:generic/block/static/leaves {distance:3,persistent:"false",waterlogged:"$(waterlogged)"}

# Pumpkin -> Carved Pumpkin
execute if block ~ ~ ~ pumpkin run return run function elemental_tools:earthshaper/invoke_alter {set_block:"carved_pumpkin",sound:"wood"}

# Resin Bricks -> Chiseled Resin Bricks -> ...
execute if block ~ ~ ~ resin_bricks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"chiseled_resin_bricks",sound:"resin_bricks"}
execute if block ~ ~ ~ chiseled_resin_bricks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"resin_bricks",sound:"resin_bricks"}

# Smooth Stone -> Smooth Stone Slab (Double) -> ...
execute if block ~ ~ ~ smooth_stone run return run function elemental_tools:earthshaper/invoke_alter {set_block:"smooth_stone_slab[type=double]",sound:"stone"}
execute if block ~ ~ ~ smooth_stone_slab[type=double] run return run function elemental_tools:earthshaper/invoke_alter {set_block:"smooth_stone",sound:"stone"}

# Sponge -> Wet Sponge -> ...
execute if block ~ ~ ~ sponge run return run function elemental_tools:earthshaper/invoke_alter {set_block:"wet_sponge",sound:"wet_sponge"}
execute if block ~ ~ ~ wet_sponge run return run function elemental_tools:earthshaper/invoke_alter {set_block:"sponge",sound:"sponge"}

# Set Position
scoreboard players set @s elemental_tools_durability_chance_maximum 3

# Chiseled Cinnabar -> Polished Cinnabar -> Cinnabar Bricks -> ...
execute if block ~ ~ ~ chiseled_cinnabar run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_cinnabar",sound:"cinnabar"}
execute if block ~ ~ ~ polished_cinnabar run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cinnabar_bricks",sound:"cinnabar"}
execute if block ~ ~ ~ cinnabar_bricks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"chiseled_cinnabar",sound:"cinnabar"}

# Chiseled Sulfur -> Polished Sulfur -> Sulfur Bricks -> ...
execute if block ~ ~ ~ chiseled_sulfur run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_sulfur",sound:"sulfur"}
execute if block ~ ~ ~ polished_sulfur run return run function elemental_tools:earthshaper/invoke_alter {set_block:"sulfur_bricks",sound:"sulfur"}
execute if block ~ ~ ~ sulfur_bricks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"chiseled_sulfur",sound:"sulfur"}

# Dirt -> Coarse Dirt -> Rooted Dirt -> ...
execute if block ~ ~ ~ dirt run return run function elemental_tools:earthshaper/invoke_alter {set_block:"coarse_dirt",sound:"gravel"}
execute if block ~ ~ ~ coarse_dirt run return run function elemental_tools:earthshaper/invoke_alter {set_block:"rooted_dirt",sound:"rooted_dirt"}
execute if block ~ ~ ~ rooted_dirt run return run function elemental_tools:earthshaper/invoke_alter {set_block:"dirt",sound:"gravel"}

# Nether Bricks -> Chiseled Nether Bricks -> Cracked Nether Bricks -> ...
execute if block ~ ~ ~ nether_bricks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"chiseled_nether_bricks",sound:"nether_bricks"}
execute if block ~ ~ ~ chiseled_nether_bricks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cracked_nether_bricks",sound:"nether_bricks"}
execute if block ~ ~ ~ cracked_nether_bricks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"nether_bricks",sound:"nether_bricks"}

# Set Position
scoreboard players set @s elemental_tools_durability_chance_maximum 4

# Polished Blackstone -> Chiseled Polished Blackstone -> Polished Blackstone Bricks -> Cracked Polished Blackstone Bricks -> ...
execute if block ~ ~ ~ polished_blackstone run return run function elemental_tools:earthshaper/invoke_alter {set_block:"chiseled_polished_blackstone",sound:"stone"}
execute if block ~ ~ ~ chiseled_polished_blackstone run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_blackstone_bricks",sound:"stone"}
execute if block ~ ~ ~ polished_blackstone_bricks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cracked_polished_blackstone_bricks",sound:"stone"}
execute if block ~ ~ ~ cracked_polished_blackstone_bricks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_blackstone",sound:"stone"}

# Red Sandstone -> Chiseled Red Sandstone -> Cut Red Sandstone -> Smooth Red Sandstone -> ...
execute if block ~ ~ ~ red_sandstone run return run function elemental_tools:earthshaper/invoke_alter {set_block:"chiseled_red_sandstone",sound:"stone"}
execute if block ~ ~ ~ chiseled_red_sandstone run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cut_red_sandstone",sound:"stone"}
execute if block ~ ~ ~ cut_red_sandstone run return run function elemental_tools:earthshaper/invoke_alter {set_block:"smooth_red_sandstone",sound:"stone"}
execute if block ~ ~ ~ smooth_red_sandstone run return run function elemental_tools:earthshaper/invoke_alter {set_block:"red_sandstone",sound:"stone"}

# Sandstone -> Chiseled Sandstone -> Cut Sandstone -> Smooth Sandstone -> ...
execute if block ~ ~ ~ sandstone run return run function elemental_tools:earthshaper/invoke_alter {set_block:"chiseled_sandstone",sound:"stone"}
execute if block ~ ~ ~ chiseled_sandstone run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cut_sandstone",sound:"stone"}
execute if block ~ ~ ~ cut_sandstone run return run function elemental_tools:earthshaper/invoke_alter {set_block:"smooth_sandstone",sound:"stone"}
execute if block ~ ~ ~ smooth_sandstone run return run function elemental_tools:earthshaper/invoke_alter {set_block:"sandstone",sound:"stone"}

# Stone Bricks -> Chiseled Stone Bricks -> Cracked Stone Bricks -> Mossy Stone Bricks -> ...
execute if block ~ ~ ~ stone_bricks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"chiseled_stone_bricks",sound:"stone"}
execute if block ~ ~ ~ chiseled_stone_bricks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cracked_stone_bricks",sound:"stone"}
execute if block ~ ~ ~ cracked_stone_bricks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"mossy_stone_bricks",sound:"stone"}
execute if block ~ ~ ~ mossy_stone_bricks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"stone_bricks",sound:"stone"}

# Tuff Bricks -> Chiseled Tuff -> Polished Tuff -> Chiseled Tuff Bricks -> ...
execute if block ~ ~ ~ tuff_bricks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"chiseled_tuff",sound:"tuff"}
execute if block ~ ~ ~ chiseled_tuff run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_tuff",sound:"polished_tuff"}
execute if block ~ ~ ~ polished_tuff run return run function elemental_tools:earthshaper/invoke_alter {set_block:"chiseled_tuff_bricks",sound:"tuff_bricks"}
execute if block ~ ~ ~ chiseled_tuff_bricks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"tuff_bricks",sound:"tuff_bricks"}

# Quartz Block -> Chiseled Quartz Block -> Smooth Quartz -> Quartz Bricks -> ...
execute if block ~ ~ ~ quartz_block run return run function elemental_tools:earthshaper/invoke_alter {set_block:"chiseled_quartz_block",sound:"stone"}
execute if block ~ ~ ~ chiseled_quartz_block run return run function elemental_tools:earthshaper/invoke_alter {set_block:"smooth_quartz",sound:"stone"}
execute if block ~ ~ ~ smooth_quartz run return run function elemental_tools:earthshaper/invoke_alter {set_block:"quartz_bricks",sound:"stone"}
execute if block ~ ~ ~ quartz_bricks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"quartz_block",sound:"stone"}

# Set Position
scoreboard players set @s elemental_tools_durability_chance_maximum 7

# Chiseled Deepslate -> Cobbled Deepslate -> Polished Deepslate -> Deepslate Bricks -> Cracked Deepslate Bricks -> Deepslate Tiles -> Cracked Deepslate Tiles -> ...
execute if block ~ ~ ~ chiseled_deepslate run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cobbled_deepslate",sound:"deepslate"}
execute if block ~ ~ ~ cobbled_deepslate run return run function elemental_tools:earthshaper/invoke_alter {set_block:"polished_deepslate",sound:"polished_deepslate"}
execute if block ~ ~ ~ polished_deepslate run return run function elemental_tools:earthshaper/invoke_alter {set_block:"deepslate_bricks",sound:"deepslate_bricks"}
execute if block ~ ~ ~ deepslate_bricks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cracked_deepslate_bricks",sound:"deepslate_bricks"}
execute if block ~ ~ ~ cracked_deepslate_bricks run return run function elemental_tools:earthshaper/invoke_alter {set_block:"deepslate_tiles",sound:"deepslate_tiles"}
execute if block ~ ~ ~ deepslate_tiles run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cracked_deepslate_tiles",sound:"deepslate_tiles"}
execute if block ~ ~ ~ cracked_deepslate_tiles run return run function elemental_tools:earthshaper/invoke_alter {set_block:"chiseled_deepslate",sound:"deepslate_bricks"}