## Alter blocks with specific static properties that match the outlined criteria.

# Azalea -> Flowering Azalea -> ...
execute if block ~ ~ ~ azalea run function elemental_tools:earthshaper/invoke_sound {sound:"flowering_azalea"}
execute if block ~ ~ ~ flowering_azalea run function elemental_tools:earthshaper/invoke_sound {sound:"azalea"}
execute if block ~ ~ ~ azalea run return run setblock ~ ~ ~ flowering_azalea
execute if block ~ ~ ~ flowering_azalea run return run setblock ~ ~ ~ azalea

# Bamboo Mosaic -> Bamboo Planks -> ...
execute if block ~ ~ ~ bamboo_mosaic run function elemental_tools:earthshaper/invoke_sound {sound:"bamboo_wood"}
execute if block ~ ~ ~ bamboo_planks run function elemental_tools:earthshaper/invoke_sound {sound:"bamboo_wood"}
execute if block ~ ~ ~ bamboo_mosaic run return run setblock ~ ~ ~ bamboo_planks
execute if block ~ ~ ~ bamboo_planks run return run setblock ~ ~ ~ bamboo_mosaic

# Chiseled Cinnabar -> Polished Cinnabar -> Cinnabar Bricks -> ...
execute if block ~ ~ ~ chiseled_cinnabar run function elemental_tools:earthshaper/invoke_sound {sound:"cinnabar"}
execute if block ~ ~ ~ polished_cinnabar run function elemental_tools:earthshaper/invoke_sound {sound:"cinnabar"}
execute if block ~ ~ ~ cinnabar_bricks run function elemental_tools:earthshaper/invoke_sound {sound:"cinnabar"}
execute if block ~ ~ ~ chiseled_cinnabar run return run setblock ~ ~ ~ polished_cinnabar
execute if block ~ ~ ~ polished_cinnabar run return run setblock ~ ~ ~ cinnabar_bricks
execute if block ~ ~ ~ cinnabar_bricks run return run setblock ~ ~ ~ chiseled_cinnabar

# Chiseled Deepslate -> Cobbled Deepslate -> Polished Deepslate -> Deepslate Bricks -> Cracked Deepslate Bricks -> Deepslate Tiles -> Cracked Deepslate Tiles -> ...
execute if block ~ ~ ~ chiseled_deepslate run function elemental_tools:earthshaper/invoke_sound {sound:"deepslate"}
execute if block ~ ~ ~ cobbled_deepslate run function elemental_tools:earthshaper/invoke_sound {sound:"polished_deepslate"}
execute if block ~ ~ ~ polished_deepslate run function elemental_tools:earthshaper/invoke_sound {sound:"deepslate_bricks"}
execute if block ~ ~ ~ deepslate_bricks run function elemental_tools:earthshaper/invoke_sound {sound:"deepslate_bricks"}
execute if block ~ ~ ~ cracked_deepslate_bricks run function elemental_tools:earthshaper/invoke_sound {sound:"deepslate_tiles"}
execute if block ~ ~ ~ deepslate_tiles run function elemental_tools:earthshaper/invoke_sound {sound:"deepslate_tiles"}
execute if block ~ ~ ~ cracked_deepslate_tiles run function elemental_tools:earthshaper/invoke_sound {sound:"deepslate_bricks"}
execute if block ~ ~ ~ chiseled_deepslate run return run setblock ~ ~ ~ cobbled_deepslate
execute if block ~ ~ ~ cobbled_deepslate run return run setblock ~ ~ ~ polished_deepslate
execute if block ~ ~ ~ polished_deepslate run return run setblock ~ ~ ~ deepslate_bricks
execute if block ~ ~ ~ deepslate_bricks run return run setblock ~ ~ ~ cracked_deepslate_bricks
execute if block ~ ~ ~ cracked_deepslate_bricks run return run setblock ~ ~ ~ deepslate_tiles
execute if block ~ ~ ~ deepslate_tiles run return run setblock ~ ~ ~ cracked_deepslate_tiles
execute if block ~ ~ ~ cracked_deepslate_tiles run return run setblock ~ ~ ~ chiseled_deepslate

# Chiseled Sulfur -> Polished Sulfur -> Sulfur Bricks -> ...
execute if block ~ ~ ~ chiseled_sulfur run function elemental_tools:earthshaper/invoke_sound {sound:"sulfur"}
execute if block ~ ~ ~ polished_sulfur run function elemental_tools:earthshaper/invoke_sound {sound:"sulfur"}
execute if block ~ ~ ~ sulfur_bricks run function elemental_tools:earthshaper/invoke_sound {sound:"sulfur"}
execute if block ~ ~ ~ chiseled_sulfur run return run setblock ~ ~ ~ polished_sulfur
execute if block ~ ~ ~ polished_sulfur run return run setblock ~ ~ ~ sulfur_bricks
execute if block ~ ~ ~ sulfur_bricks run return run setblock ~ ~ ~ chiseled_sulfur

# Cobblestone -> Mossy Cobblestone -> ...
execute if block ~ ~ ~ cobblestone run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ mossy_cobblestone run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ cobblestone run return run setblock ~ ~ ~ mossy_cobblestone
execute if block ~ ~ ~ mossy_cobblestone run return run setblock ~ ~ ~ cobblestone

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
execute if block ~ ~ ~ #elemental_tools:copper_chiseled_and_cut run function elemental_tools:earthshaper/invoke_sound {sound:"copper"}
execute if block ~ ~ ~ #elemental_tools:copper_chiseled_and_cut run return run function elemental_tools:earthshaper/block/static_copper_chiseled_and_cut

# Dirt -> Coarse Dirt -> Rooted Dirt -> ...
execute if block ~ ~ ~ dirt run function elemental_tools:earthshaper/invoke_sound {sound:"gravel"}
execute if block ~ ~ ~ coarse_dirt run function elemental_tools:earthshaper/invoke_sound {sound:"rooted_dirt"}
execute if block ~ ~ ~ rooted_dirt run function elemental_tools:earthshaper/invoke_sound {sound:"gravel"}
execute if block ~ ~ ~ dirt run return run setblock ~ ~ ~ coarse_dirt
execute if block ~ ~ ~ coarse_dirt run return run setblock ~ ~ ~ rooted_dirt
execute if block ~ ~ ~ rooted_dirt run return run setblock ~ ~ ~ dirt

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

# Nether Bricks -> Chiseled Nether Bricks -> Cracked Nether Bricks -> ...
execute if block ~ ~ ~ nether_bricks run function elemental_tools:earthshaper/invoke_sound {sound:"nether_bricks"}
execute if block ~ ~ ~ chiseled_nether_bricks run function elemental_tools:earthshaper/invoke_sound {sound:"nether_bricks"}
execute if block ~ ~ ~ cracked_nether_bricks run function elemental_tools:earthshaper/invoke_sound {sound:"nether_bricks"}
execute if block ~ ~ ~ nether_bricks run return run setblock ~ ~ ~ chiseled_nether_bricks
execute if block ~ ~ ~ chiseled_nether_bricks run return run setblock ~ ~ ~ cracked_nether_bricks
execute if block ~ ~ ~ cracked_nether_bricks run return run setblock ~ ~ ~ nether_bricks

# Polished Blackstone -> Chiseled Polished Blackstone -> Polished Blackstone Bricks -> Cracked Polished Blackstone Bricks -> ...
execute if block ~ ~ ~ polished_blackstone run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ chiseled_polished_blackstone run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ polished_blackstone_bricks run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ cracked_polished_blackstone_bricks run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ polished_blackstone run return run setblock ~ ~ ~ chiseled_polished_blackstone
execute if block ~ ~ ~ chiseled_polished_blackstone run return run setblock ~ ~ ~ polished_blackstone_bricks
execute if block ~ ~ ~ polished_blackstone_bricks run return run setblock ~ ~ ~ cracked_polished_blackstone_bricks
execute if block ~ ~ ~ cracked_polished_blackstone_bricks run return run setblock ~ ~ ~ polished_blackstone

# Pumpkin -> Carved Pumpkin -> ...
execute if block ~ ~ ~ pumpkin run function elemental_tools:earthshaper/invoke_sound {sound:"wood"}
execute if block ~ ~ ~ carved_pumpkin run function elemental_tools:earthshaper/invoke_sound {sound:"wood"}
execute if block ~ ~ ~ pumpkin run return run setblock ~ ~ ~ carved_pumpkin
execute if block ~ ~ ~ carved_pumpkin run return run setblock ~ ~ ~ pumpkin

# Red Sandstone -> Chiseled Red Sandstone -> Cut Red Sandstone -> Smooth Red Sandstone -> ...
execute if block ~ ~ ~ red_sandstone run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ chiseled_red_sandstone run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ cut_red_sandstone run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ smooth_red_sandstone run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ red_sandstone run return run setblock ~ ~ ~ chiseled_red_sandstone
execute if block ~ ~ ~ chiseled_red_sandstone run return run setblock ~ ~ ~ cut_red_sandstone
execute if block ~ ~ ~ cut_red_sandstone run return run setblock ~ ~ ~ smooth_red_sandstone
execute if block ~ ~ ~ smooth_red_sandstone run return run setblock ~ ~ ~ red_sandstone

# Resin Bricks -> Chiseled Resin Bricks -> ...
execute if block ~ ~ ~ resin_bricks run function elemental_tools:earthshaper/invoke_sound {sound:"resin_bricks"}
execute if block ~ ~ ~ chiseled_resin_bricks run function elemental_tools:earthshaper/invoke_sound {sound:"resin_bricks"}
execute if block ~ ~ ~ resin_bricks run return run setblock ~ ~ ~ chiseled_resin_bricks
execute if block ~ ~ ~ chiseled_resin_bricks run return run setblock ~ ~ ~ resin_bricks

# Sandstone -> Chiseled Sandstone -> Cut Sandstone -> Smooth Sandstone -> ...
execute if block ~ ~ ~ sandstone run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ chiseled_sandstone run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ cut_sandstone run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ smooth_sandstone run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ sandstone run return run setblock ~ ~ ~ chiseled_sandstone
execute if block ~ ~ ~ chiseled_sandstone run return run setblock ~ ~ ~ cut_sandstone
execute if block ~ ~ ~ cut_sandstone run return run setblock ~ ~ ~ smooth_sandstone
execute if block ~ ~ ~ smooth_sandstone run return run setblock ~ ~ ~ sandstone

# Smooth Stone -> Smooth Stone Slab (Double) -> ...
execute if block ~ ~ ~ smooth_stone run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ smooth_stone_slab[type=double] run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ smooth_stone run return run setblock ~ ~ ~ smooth_stone_slab[type=double]
execute if block ~ ~ ~ smooth_stone_slab[type=double] run return run setblock ~ ~ ~ smooth_stone

# Sponge -> Wet Sponge -> ...
execute if block ~ ~ ~ sponge run function elemental_tools:earthshaper/invoke_sound {sound:"wet_sponge"}
execute if block ~ ~ ~ wet_sponge run function elemental_tools:earthshaper/invoke_sound {sound:"sponge"}
execute if block ~ ~ ~ sponge run return run setblock ~ ~ ~ wet_sponge
execute if block ~ ~ ~ wet_sponge run return run setblock ~ ~ ~ sponge

# Stone Bricks -> Chiseled Stone Bricks -> Cracked Stone Bricks -> Mossy Stone Bricks -> ...
execute if block ~ ~ ~ stone_bricks run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ chiseled_stone_bricks run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ cracked_stone_bricks run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ mossy_stone_bricks run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ stone_bricks run return run setblock ~ ~ ~ chiseled_stone_bricks
execute if block ~ ~ ~ chiseled_stone_bricks run return run setblock ~ ~ ~ cracked_stone_bricks
execute if block ~ ~ ~ cracked_stone_bricks run return run setblock ~ ~ ~ mossy_stone_bricks
execute if block ~ ~ ~ mossy_stone_bricks run return run setblock ~ ~ ~ stone_bricks

# Tuff Bricks -> Chiseled Tuff -> Polished Tuff -> Chiseled Tuff Bricks -> ...
execute if block ~ ~ ~ tuff_bricks run function elemental_tools:earthshaper/invoke_sound {sound:"tuff"}
execute if block ~ ~ ~ chiseled_tuff run function elemental_tools:earthshaper/invoke_sound {sound:"polished_tuff"}
execute if block ~ ~ ~ polished_tuff run function elemental_tools:earthshaper/invoke_sound {sound:"tuff_bricks"}
execute if block ~ ~ ~ chiseled_tuff_bricks run function elemental_tools:earthshaper/invoke_sound {sound:"tuff_bricks"}
execute if block ~ ~ ~ tuff_bricks run return run setblock ~ ~ ~ chiseled_tuff
execute if block ~ ~ ~ chiseled_tuff run return run setblock ~ ~ ~ polished_tuff
execute if block ~ ~ ~ polished_tuff run return run setblock ~ ~ ~ chiseled_tuff_bricks
execute if block ~ ~ ~ chiseled_tuff_bricks run return run setblock ~ ~ ~ tuff_bricks

# Quartz Block -> Chiseled Quartz Block -> Smooth Quartz -> Quartz Bricks -> ...
execute if block ~ ~ ~ quartz_block run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ chiseled_quartz_block run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ smooth_quartz run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ quartz_bricks run function elemental_tools:earthshaper/invoke_sound {sound:"stone"}
execute if block ~ ~ ~ quartz_block run return run setblock ~ ~ ~ chiseled_quartz_block
execute if block ~ ~ ~ chiseled_quartz_block run return run setblock ~ ~ ~ smooth_quartz
execute if block ~ ~ ~ smooth_quartz run return run setblock ~ ~ ~ quartz_bricks
execute if block ~ ~ ~ quartz_bricks run return run setblock ~ ~ ~ quartz_block