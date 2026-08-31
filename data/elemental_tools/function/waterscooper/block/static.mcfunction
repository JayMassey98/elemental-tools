## Plumb blocks with specific static properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# Candles
$execute if block ~ ~ ~ #minecraft:candles[candles=1] run return run function elemental_tools:generic/block/static/candles {states:2,candles:1,lit:"false",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:candles[candles=2] run return run function elemental_tools:generic/block/static/candles {states:2,candles:2,lit:"false",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:candles[candles=3] run return run function elemental_tools:generic/block/static/candles {states:2,candles:3,lit:"false",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:candles[candles=4] run return run function elemental_tools:generic/block/static/candles {states:2,candles:4,lit:"false",waterlogged:"$(waterlogged_next)"}

# General
$execute if block ~ ~ ~ barrier run return run setblock ~ ~ ~ barrier[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ brain_coral run return run setblock ~ ~ ~ brain_coral[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ brain_coral_fan run return run setblock ~ ~ ~ brain_coral_fan[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ bubble_coral run return run setblock ~ ~ ~ bubble_coral[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ bubble_coral_fan run return run setblock ~ ~ ~ bubble_coral_fan[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ conduit run return run setblock ~ ~ ~ conduit[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ copper_grate run return run setblock ~ ~ ~ copper_grate[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dead_brain_coral run return run setblock ~ ~ ~ dead_brain_coral[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dead_brain_coral_fan run return run setblock ~ ~ ~ dead_brain_coral_fan[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dead_bubble_coral run return run setblock ~ ~ ~ dead_bubble_coral[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dead_bubble_coral_fan run return run setblock ~ ~ ~ dead_bubble_coral_fan[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dead_fire_coral run return run setblock ~ ~ ~ dead_fire_coral[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dead_fire_coral_fan run return run setblock ~ ~ ~ dead_fire_coral_fan[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dead_horn_coral run return run setblock ~ ~ ~ dead_horn_coral[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dead_horn_coral_fan run return run setblock ~ ~ ~ dead_horn_coral_fan[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dead_tube_coral run return run setblock ~ ~ ~ dead_tube_coral[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dead_tube_coral_fan run return run setblock ~ ~ ~ dead_tube_coral_fan[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ exposed_copper_grate run return run setblock ~ ~ ~ exposed_copper_grate[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ fire_coral run return run setblock ~ ~ ~ fire_coral[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ fire_coral_fan run return run setblock ~ ~ ~ fire_coral_fan[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ hanging_roots run return run setblock ~ ~ ~ hanging_roots[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ heavy_core run return run setblock ~ ~ ~ heavy_core[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ horn_coral run return run setblock ~ ~ ~ horn_coral[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ horn_coral_fan run return run setblock ~ ~ ~ horn_coral_fan[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ oxidized_copper_grate run return run setblock ~ ~ ~ oxidized_copper_grate[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ tube_coral run return run setblock ~ ~ ~ tube_coral[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ tube_coral_fan run return run setblock ~ ~ ~ tube_coral_fan[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_copper_grate run return run setblock ~ ~ ~ waxed_copper_grate[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_exposed_copper_grate run return run setblock ~ ~ ~ waxed_exposed_copper_grate[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_oxidized_copper_grate run return run setblock ~ ~ ~ waxed_oxidized_copper_grate[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_weathered_copper_grate run return run setblock ~ ~ ~ waxed_weathered_copper_grate[waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ weathered_copper_grate run return run setblock ~ ~ ~ weathered_copper_grate[waterlogged=$(waterlogged_next)]

# Lanterns
$execute if block ~ ~ ~ #minecraft:lanterns[hanging=false] run return run function elemental_tools:generic/block/static/lanterns {states:2,hanging:"false",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:lanterns[hanging=true] run return run function elemental_tools:generic/block/static/lanterns {states:2,hanging:"true",waterlogged:"$(waterlogged_next)"}

# Leaves
$execute if block ~ ~ ~ #minecraft:leaves[distance=1,persistent=false] run return run function elemental_tools:generic/block/static/leaves {states:2,distance:1,persistent:"false",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=1,persistent=true] run return run function elemental_tools:generic/block/static/leaves {states:2,distance:1,persistent:"true",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=2,persistent=false] run return run function elemental_tools:generic/block/static/leaves {states:2,distance:2,persistent:"false",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=2,persistent=true] run return run function elemental_tools:generic/block/static/leaves {states:2,distance:2,persistent:"true",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=3,persistent=false] run return run function elemental_tools:generic/block/static/leaves {states:2,distance:3,persistent:"false",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=3,persistent=true] run return run function elemental_tools:generic/block/static/leaves {states:2,distance:3,persistent:"true",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=4,persistent=false] run return run function elemental_tools:generic/block/static/leaves {states:2,distance:4,persistent:"false",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=4,persistent=true] run return run function elemental_tools:generic/block/static/leaves {states:2,distance:4,persistent:"true",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=5,persistent=false] run return run function elemental_tools:generic/block/static/leaves {states:2,distance:1,persistent:"false",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=5,persistent=true] run return run function elemental_tools:generic/block/static/leaves {states:2,distance:1,persistent:"true",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=6,persistent=false] run return run function elemental_tools:generic/block/static/leaves {states:2,distance:2,persistent:"false",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=6,persistent=true] run return run function elemental_tools:generic/block/static/leaves {states:2,distance:2,persistent:"true",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=7,persistent=false] run return run function elemental_tools:generic/block/static/leaves {states:2,distance:3,persistent:"false",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:leaves[distance=7,persistent=true] run return run function elemental_tools:generic/block/static/leaves {states:2,distance:3,persistent:"true",waterlogged:"$(waterlogged_next)"}

# Mangrove Propagules
$execute if block ~ ~ ~ mangrove_propagule[hanging=false,stage=0] run return run setblock ~ ~ ~ mangrove_propagule[hanging=false,stage=0,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ mangrove_propagule[hanging=false,stage=1] run return run setblock ~ ~ ~ mangrove_propagule[hanging=false,stage=1,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ mangrove_propagule[hanging=true,age=0] run return run setblock ~ ~ ~ mangrove_propagule[hanging=true,age=0,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ mangrove_propagule[hanging=true,age=1] run return run setblock ~ ~ ~ mangrove_propagule[hanging=true,age=1,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ mangrove_propagule[hanging=true,age=2] run return run setblock ~ ~ ~ mangrove_propagule[hanging=true,age=2,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ mangrove_propagule[hanging=true,age=3] run return run setblock ~ ~ ~ mangrove_propagule[hanging=true,age=3,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ mangrove_propagule[hanging=true,age=4] run return run setblock ~ ~ ~ mangrove_propagule[hanging=true,age=4,waterlogged=$(waterlogged_next)]

# Scaffolding
$execute if block ~ ~ ~ scaffolding[bottom=false,distance=0] run return run setblock ~ ~ ~ scaffolding[bottom=false,distance=0,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ scaffolding[bottom=false,distance=1] run return run setblock ~ ~ ~ scaffolding[bottom=false,distance=1,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ scaffolding[bottom=false,distance=2] run return run setblock ~ ~ ~ scaffolding[bottom=false,distance=2,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ scaffolding[bottom=false,distance=3] run return run setblock ~ ~ ~ scaffolding[bottom=false,distance=3,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ scaffolding[bottom=false,distance=4] run return run setblock ~ ~ ~ scaffolding[bottom=false,distance=4,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ scaffolding[bottom=false,distance=5] run return run setblock ~ ~ ~ scaffolding[bottom=false,distance=5,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ scaffolding[bottom=false,distance=6] run return run setblock ~ ~ ~ scaffolding[bottom=false,distance=6,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ scaffolding[bottom=false,distance=7] run return run setblock ~ ~ ~ scaffolding[bottom=false,distance=7,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ scaffolding[bottom=true,distance=0] run return run setblock ~ ~ ~ scaffolding[bottom=true,distance=0,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ scaffolding[bottom=true,distance=1] run return run setblock ~ ~ ~ scaffolding[bottom=true,distance=1,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ scaffolding[bottom=true,distance=2] run return run setblock ~ ~ ~ scaffolding[bottom=true,distance=2,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ scaffolding[bottom=true,distance=3] run return run setblock ~ ~ ~ scaffolding[bottom=true,distance=3,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ scaffolding[bottom=true,distance=4] run return run setblock ~ ~ ~ scaffolding[bottom=true,distance=4,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ scaffolding[bottom=true,distance=5] run return run setblock ~ ~ ~ scaffolding[bottom=true,distance=5,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ scaffolding[bottom=true,distance=6] run return run setblock ~ ~ ~ scaffolding[bottom=true,distance=6,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ scaffolding[bottom=true,distance=7] run return run setblock ~ ~ ~ scaffolding[bottom=true,distance=7,waterlogged=$(waterlogged_next)]

# Sculk Sensors
$execute if block ~ ~ ~ sculk_sensor[power=0] run return run setblock ~ ~ ~ sculk_sensor[power=0,sculk_sensor_phase=inactive,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_sensor[power=1] run return run setblock ~ ~ ~ sculk_sensor[power=1,sculk_sensor_phase=active,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_sensor[power=2] run return run setblock ~ ~ ~ sculk_sensor[power=2,sculk_sensor_phase=active,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_sensor[power=3] run return run setblock ~ ~ ~ sculk_sensor[power=3,sculk_sensor_phase=active,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_sensor[power=4] run return run setblock ~ ~ ~ sculk_sensor[power=4,sculk_sensor_phase=active,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_sensor[power=5] run return run setblock ~ ~ ~ sculk_sensor[power=5,sculk_sensor_phase=active,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_sensor[power=6] run return run setblock ~ ~ ~ sculk_sensor[power=6,sculk_sensor_phase=active,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_sensor[power=7] run return run setblock ~ ~ ~ sculk_sensor[power=7,sculk_sensor_phase=active,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_sensor[power=8] run return run setblock ~ ~ ~ sculk_sensor[power=8,sculk_sensor_phase=active,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_sensor[power=9] run return run setblock ~ ~ ~ sculk_sensor[power=9,sculk_sensor_phase=active,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_sensor[power=10] run return run setblock ~ ~ ~ sculk_sensor[power=10,sculk_sensor_phase=active,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_sensor[power=11] run return run setblock ~ ~ ~ sculk_sensor[power=11,sculk_sensor_phase=active,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_sensor[power=12] run return run setblock ~ ~ ~ sculk_sensor[power=12,sculk_sensor_phase=active,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_sensor[power=13] run return run setblock ~ ~ ~ sculk_sensor[power=13,sculk_sensor_phase=active,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_sensor[power=14] run return run setblock ~ ~ ~ sculk_sensor[power=14,sculk_sensor_phase=active,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_sensor[power=15] run return run setblock ~ ~ ~ sculk_sensor[power=15,sculk_sensor_phase=active,waterlogged=$(waterlogged_next)]

# Sculk Shriekers
$execute if block ~ ~ ~ sculk_shrieker[shrieking=false,can_summon=false] run return run setblock ~ ~ ~ sculk_shrieker[shrieking=false,can_summon=false,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_shrieker[shrieking=false,can_summon=true] run return run setblock ~ ~ ~ sculk_shrieker[shrieking=false,can_summon=true,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_shrieker[shrieking=true,can_summon=false] run return run setblock ~ ~ ~ sculk_shrieker[shrieking=true,can_summon=false,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sculk_shrieker[shrieking=true,can_summon=true] run return run setblock ~ ~ ~ sculk_shrieker[shrieking=true,can_summon=true,waterlogged=$(waterlogged_next)]

# Sea Pickles
$execute if block ~ ~ ~ sea_pickle[pickles=1] run return run setblock ~ ~ ~ sea_pickle[pickles=1,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sea_pickle[pickles=2] run return run setblock ~ ~ ~ sea_pickle[pickles=2,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sea_pickle[pickles=3] run return run setblock ~ ~ ~ sea_pickle[pickles=3,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ sea_pickle[pickles=4] run return run setblock ~ ~ ~ sea_pickle[pickles=4,waterlogged=$(waterlogged_next)]

# Speleothems
$execute if block ~ ~ ~ #minecraft:speleothems[thickness=base,vertical_direction=up] run return run function elemental_tools:generic/block/static/speleothems {states:2,thickness:"base",vertical_direction:"up",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:speleothems[thickness=base,vertical_direction=down] run return run function elemental_tools:generic/block/static/speleothems {states:2,thickness:"base",vertical_direction:"down",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:speleothems[thickness=frustum,vertical_direction=up] run return run function elemental_tools:generic/block/static/speleothems {states:2,thickness:"frustum",vertical_direction:"up",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:speleothems[thickness=frustum,vertical_direction=down] run return run function elemental_tools:generic/block/static/speleothems {states:2,thickness:"frustum",vertical_direction:"down",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:speleothems[thickness=middle,vertical_direction=up] run return run function elemental_tools:generic/block/static/speleothems {states:2,thickness:"middle",vertical_direction:"up",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:speleothems[thickness=middle,vertical_direction=down] run return run function elemental_tools:generic/block/static/speleothems {states:2,thickness:"middle",vertical_direction:"down",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:speleothems[thickness=tip,vertical_direction=up] run return run function elemental_tools:generic/block/static/speleothems {states:2,thickness:"tip",vertical_direction:"up",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:speleothems[thickness=tip,vertical_direction=down] run return run function elemental_tools:generic/block/static/speleothems {states:2,thickness:"tip",vertical_direction:"down",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:speleothems[thickness=tip_merge,vertical_direction=up] run return run function elemental_tools:generic/block/static/speleothems {states:2,thickness:"tip_merge",vertical_direction:"up",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:speleothems[thickness=tip_merge,vertical_direction=down] run return run function elemental_tools:generic/block/static/speleothems {states:2,thickness:"tip_merge",vertical_direction:"down",waterlogged:"$(waterlogged_next)"}