## Plumb the target block with connection N+E+S+W+U+D to be (un)waterlogged.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# N+E+S+W - General
$execute if block ~ ~ ~ acacia_fence run return run setblock ~ ~ ~ acacia_fence[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ bamboo_fence run return run setblock ~ ~ ~ bamboo_fence[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ birch_fence run return run setblock ~ ~ ~ birch_fence[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ black_stained_glass_pane run return run setblock ~ ~ ~ black_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ blue_stained_glass_pane run return run setblock ~ ~ ~ blue_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ brown_stained_glass_pane run return run setblock ~ ~ ~ brown_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ cherry_fence run return run setblock ~ ~ ~ cherry_fence[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ copper_bars run return run setblock ~ ~ ~ copper_bars[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ crimson_fence run return run setblock ~ ~ ~ crimson_fence[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ cyan_stained_glass_pane run return run setblock ~ ~ ~ cyan_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dark_oak_fence run return run setblock ~ ~ ~ dark_oak_fence[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ exposed_copper_bars run return run setblock ~ ~ ~ exposed_copper_bars[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ glass_pane run return run setblock ~ ~ ~ glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ gray_stained_glass_pane run return run setblock ~ ~ ~ gray_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ green_stained_glass_pane run return run setblock ~ ~ ~ green_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ iron_bars run return run setblock ~ ~ ~ iron_bars[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ jungle_fence run return run setblock ~ ~ ~ jungle_fence[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ light_blue_stained_glass_pane run return run setblock ~ ~ ~ light_blue_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ light_gray_stained_glass_pane run return run setblock ~ ~ ~ light_gray_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ lime_stained_glass_pane run return run setblock ~ ~ ~ lime_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ magenta_stained_glass_pane run return run setblock ~ ~ ~ magenta_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ mangrove_fence run return run setblock ~ ~ ~ mangrove_fence[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ nether_brick_fence run return run setblock ~ ~ ~ nether_brick_fence[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ oak_fence run return run setblock ~ ~ ~ oak_fence[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ orange_stained_glass_pane run return run setblock ~ ~ ~ orange_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ oxidized_copper_bars run return run setblock ~ ~ ~ oxidized_copper_bars[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ pale_oak_fence run return run setblock ~ ~ ~ pale_oak_fence[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ pink_stained_glass_pane run return run setblock ~ ~ ~ pink_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ red_stained_glass_pane run return run setblock ~ ~ ~ red_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ spruce_fence run return run setblock ~ ~ ~ spruce_fence[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ warped_fence run return run setblock ~ ~ ~ warped_fence[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_copper_bars run return run setblock ~ ~ ~ waxed_copper_bars[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_exposed_copper_bars run return run setblock ~ ~ ~ waxed_exposed_copper_bars[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_oxidized_copper_bars run return run setblock ~ ~ ~ waxed_oxidized_copper_bars[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_weathered_copper_bars run return run setblock ~ ~ ~ waxed_weathered_copper_bars[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ weathered_copper_bars run return run setblock ~ ~ ~ weathered_copper_bars[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ white_stained_glass_pane run return run setblock ~ ~ ~ white_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ yellow_stained_glass_pane run return run setblock ~ ~ ~ yellow_stained_glass_pane[east=$(east),north=$(north),south=$(south),west=$(west),waterlogged=$(waterlogged_next)]

# N+E+S+W+U+D - General
$execute if block ~ ~ ~ #elemental_tools:waterscooper[down=false,east=$(east),north=$(north),south=$(south),up=false,west=$(west),waterlogged=$(waterlogged)] run return run function elemental_tools:waterscooper/plumb/connection_neswud {states:2,down:"false",east:"$(east)",north:"$(north)",south:"$(south)",up:"false",west:"$(west)",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:waterscooper[down=false,east=$(east),north=$(north),south=$(south),up=true,west=$(west),waterlogged=$(waterlogged)] run return run function elemental_tools:waterscooper/plumb/connection_neswud {states:2,down:"false",east:"$(east)",north:"$(north)",south:"$(south)",up:"true",west:"$(west)",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:waterscooper[down=true,east=$(east),north=$(north),south=$(south),up=false,west=$(west),waterlogged=$(waterlogged)] run return run function elemental_tools:waterscooper/plumb/connection_neswud {states:2,down:"true",east:"$(east)",north:"$(north)",south:"$(south)",up:"false",west:"$(west)",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:waterscooper[down=true,east=$(east),north=$(north),south=$(south),up=true,west=$(west),waterlogged=$(waterlogged)] run return run function elemental_tools:waterscooper/plumb/connection_neswud {states:2,down:"true",east:"$(east)",north:"$(north)",south:"$(south)",up:"true",west:"$(west)",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}