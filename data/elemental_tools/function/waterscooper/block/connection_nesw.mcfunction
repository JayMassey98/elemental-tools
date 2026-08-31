## Plumb blocks with specific connection (N+E+S+W+U+D) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# N+E+S+W - Bars
$execute if block ~ ~ ~ #minecraft:bars run return run function elemental_tools:generic/block/connection/bars {states:2,east:"$(east)",north:"$(north)",south:"$(south)",waterlogged:"$(waterlogged_next)",west:"$(west)"}

# N+E+S+W - Fences
$execute if block ~ ~ ~ #minecraft:fences run return run function elemental_tools:generic/block/connection/fences {states:2,east:"$(east)",north:"$(north)",south:"$(south)",waterlogged:"$(waterlogged_next)",west:"$(west)"}

# N+E+S+W - Glass Panes
$execute if block ~ ~ ~ black_stained_glass_pane run return run setblock ~ ~ ~ black_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ blue_stained_glass_pane run return run setblock ~ ~ ~ blue_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ brown_stained_glass_pane run return run setblock ~ ~ ~ brown_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ cyan_stained_glass_pane run return run setblock ~ ~ ~ cyan_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ glass_pane run return run setblock ~ ~ ~ glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ gray_stained_glass_pane run return run setblock ~ ~ ~ gray_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ green_stained_glass_pane run return run setblock ~ ~ ~ green_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ light_blue_stained_glass_pane run return run setblock ~ ~ ~ light_blue_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ light_gray_stained_glass_pane run return run setblock ~ ~ ~ light_gray_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ lime_stained_glass_pane run return run setblock ~ ~ ~ lime_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ magenta_stained_glass_pane run return run setblock ~ ~ ~ magenta_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ orange_stained_glass_pane run return run setblock ~ ~ ~ orange_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ pink_stained_glass_pane run return run setblock ~ ~ ~ pink_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ purple_stained_glass_pane run return run setblock ~ ~ ~ purple_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ red_stained_glass_pane run return run setblock ~ ~ ~ red_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ white_stained_glass_pane run return run setblock ~ ~ ~ white_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ yellow_stained_glass_pane run return run setblock ~ ~ ~ yellow_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]

# N+E+S+W+U+D - Resin Clump
$execute if block ~ ~ ~ resin_clump run return run function elemental_tools:generic/block/connection/resin_clump {states:2,down:"false",east:"$(east)",north:"$(north)",south:"$(south)",up:"false",waterlogged:"$(waterlogged_next)",west:"$(west)"}
$execute if block ~ ~ ~ resin_clump run return run function elemental_tools:generic/block/connection/resin_clump {states:2,down:"false",east:"$(east)",north:"$(north)",south:"$(south)",up:"true",waterlogged:"$(waterlogged_next)",west:"$(west)"}
$execute if block ~ ~ ~ resin_clump run return run function elemental_tools:generic/block/connection/resin_clump {states:2,down:"true",east:"$(east)",north:"$(north)",south:"$(south)",up:"false",waterlogged:"$(waterlogged_next)",west:"$(west)"}
$execute if block ~ ~ ~ resin_clump run return run function elemental_tools:generic/block/connection/resin_clump {states:2,down:"true",east:"$(east)",north:"$(north)",south:"$(south)",up:"true",waterlogged:"$(waterlogged_next)",west:"$(west)"}

# N+E+S+W+U+D - Sculk Vein
$execute if block ~ ~ ~ sculk_vein run return run function elemental_tools:generic/block/connection/sculk_vein {states:2,down:"false",east:"$(east)",north:"$(north)",south:"$(south)",up:"false",waterlogged:"$(waterlogged_next)",west:"$(west)"}
$execute if block ~ ~ ~ sculk_vein run return run function elemental_tools:generic/block/connection/sculk_vein {states:2,down:"false",east:"$(east)",north:"$(north)",south:"$(south)",up:"true",waterlogged:"$(waterlogged_next)",west:"$(west)"}
$execute if block ~ ~ ~ sculk_vein run return run function elemental_tools:generic/block/connection/sculk_vein {states:2,down:"true",east:"$(east)",north:"$(north)",south:"$(south)",up:"false",waterlogged:"$(waterlogged_next)",west:"$(west)"}
$execute if block ~ ~ ~ sculk_vein run return run function elemental_tools:generic/block/connection/sculk_vein {states:2,down:"true",east:"$(east)",north:"$(north)",south:"$(south)",up:"true",waterlogged:"$(waterlogged_next)",west:"$(west)"}