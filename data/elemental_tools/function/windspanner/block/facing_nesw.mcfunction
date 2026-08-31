## Rotate blocks with specific facing (N/E/S/W/U/D) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# N/E/S/W - Beehives
$execute if block ~ ~ ~ bee_nest[honey_level=0] run return run setblock ~ ~ ~ bee_nest[honey_level=0,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ bee_nest[honey_level=1] run return run setblock ~ ~ ~ bee_nest[honey_level=1,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ bee_nest[honey_level=2] run return run setblock ~ ~ ~ bee_nest[honey_level=2,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ bee_nest[honey_level=3] run return run setblock ~ ~ ~ bee_nest[honey_level=3,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ bee_nest[honey_level=4] run return run setblock ~ ~ ~ bee_nest[honey_level=4,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ bee_nest[honey_level=5] run return run setblock ~ ~ ~ bee_nest[honey_level=5,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ beehive[honey_level=0] run return run setblock ~ ~ ~ beehive[honey_level=0,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ beehive[honey_level=1] run return run setblock ~ ~ ~ beehive[honey_level=1,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ beehive[honey_level=2] run return run setblock ~ ~ ~ beehive[honey_level=2,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ beehive[honey_level=3] run return run setblock ~ ~ ~ beehive[honey_level=3,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ beehive[honey_level=4] run return run setblock ~ ~ ~ beehive[honey_level=4,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ beehive[honey_level=5] run return run setblock ~ ~ ~ beehive[honey_level=5,facing=$(facing_nesw_next)]

# N/E/S/W - Buttons
$execute if block ~ ~ ~ #minecraft:buttons[face=ceiling,powered=false] run return run function elemental_tools:generic/block/facing/buttons {states:4,face:"ceiling",facing:"$(facing_nesw_next)",powered:"false"}
$execute if block ~ ~ ~ #minecraft:buttons[face=ceiling,powered=true] run return run function elemental_tools:generic/block/facing/buttons {states:4,face:"ceiling",facing:"$(facing_nesw_next)",powered:"true"}
$execute if block ~ ~ ~ #minecraft:buttons[face=floor,powered=false] run return run function elemental_tools:generic/block/facing/buttons {states:4,face:"floor",facing:"$(facing_nesw_next)",powered:"false"}
$execute if block ~ ~ ~ #minecraft:buttons[face=floor,powered=true] run return run function elemental_tools:generic/block/facing/buttons {states:4,face:"floor",facing:"$(facing_nesw_next)",powered:"true"}

# N/E/S/W - Calibrated Sculk Sensors
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=0,waterlogged=false] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=0,sculk_sensor_phase=inactive,waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=0,waterlogged=true] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=0,sculk_sensor_phase=inactive,waterlogged=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=1,waterlogged=false] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=1,sculk_sensor_phase=active,waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=1,waterlogged=true] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=1,sculk_sensor_phase=active,waterlogged=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=2,waterlogged=false] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=2,sculk_sensor_phase=active,waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=2,waterlogged=true] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=2,sculk_sensor_phase=active,waterlogged=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=3,waterlogged=false] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=3,sculk_sensor_phase=active,waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=3,waterlogged=true] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=3,sculk_sensor_phase=active,waterlogged=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=4,waterlogged=false] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=4,sculk_sensor_phase=active,waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=4,waterlogged=true] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=4,sculk_sensor_phase=active,waterlogged=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=5,waterlogged=false] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=5,sculk_sensor_phase=active,waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=5,waterlogged=true] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=5,sculk_sensor_phase=active,waterlogged=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=6,waterlogged=false] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=6,sculk_sensor_phase=active,waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=6,waterlogged=true] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=6,sculk_sensor_phase=active,waterlogged=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=7,waterlogged=false] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=7,sculk_sensor_phase=active,waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=7,waterlogged=true] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=7,sculk_sensor_phase=active,waterlogged=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=8,waterlogged=false] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=8,sculk_sensor_phase=active,waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=8,waterlogged=true] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=8,sculk_sensor_phase=active,waterlogged=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=9,waterlogged=false] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=9,sculk_sensor_phase=active,waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=9,waterlogged=true] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=9,sculk_sensor_phase=active,waterlogged=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=10,waterlogged=false] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=10,sculk_sensor_phase=active,waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=10,waterlogged=true] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=10,sculk_sensor_phase=active,waterlogged=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=11,waterlogged=false] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=11,sculk_sensor_phase=active,waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=11,waterlogged=true] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=11,sculk_sensor_phase=active,waterlogged=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=12,waterlogged=false] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=12,sculk_sensor_phase=active,waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=12,waterlogged=true] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=12,sculk_sensor_phase=active,waterlogged=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=13,waterlogged=false] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=13,sculk_sensor_phase=active,waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=13,waterlogged=true] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=13,sculk_sensor_phase=active,waterlogged=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=14,waterlogged=false] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=14,sculk_sensor_phase=active,waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=14,waterlogged=true] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=14,sculk_sensor_phase=active,waterlogged=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=15,waterlogged=false] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=15,sculk_sensor_phase=active,waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=15,waterlogged=true] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=15,sculk_sensor_phase=active,waterlogged=true,facing=$(facing_nesw_next)]

# N/E/S/W - Campfires
$execute if block ~ ~ ~ #minecraft:campfires[lit=false,signal_fire=false,waterlogged=false] run return run function elemental_tools:generic/block/facing/campfires {states:4,lit:"false",facing:"$(facing_nesw_next)",signal_fire:"false",waterlogged:"false"}
$execute if block ~ ~ ~ #minecraft:campfires[lit=false,signal_fire=false,waterlogged=true] run return run function elemental_tools:generic/block/facing/campfires {states:4,lit:"false",facing:"$(facing_nesw_next)",signal_fire:"false",waterlogged:"true"}
$execute if block ~ ~ ~ #minecraft:campfires[lit=false,signal_fire=true,waterlogged=false] run return run function elemental_tools:generic/block/facing/campfires {states:4,lit:"false",facing:"$(facing_nesw_next)",signal_fire:"true",waterlogged:"false"}
$execute if block ~ ~ ~ #minecraft:campfires[lit=false,signal_fire=true,waterlogged=true] run return run function elemental_tools:generic/block/facing/campfires {states:4,lit:"false",facing:"$(facing_nesw_next)",signal_fire:"true",waterlogged:"true"}
$execute if block ~ ~ ~ #minecraft:campfires[lit=true,signal_fire=false,waterlogged=false] run return run function elemental_tools:generic/block/facing/campfires {states:4,lit:"true",facing:"$(facing_nesw_next)",signal_fire:"false",waterlogged:"false"}
$execute if block ~ ~ ~ #minecraft:campfires[lit=true,signal_fire=false,waterlogged=true] run return run function elemental_tools:generic/block/facing/campfires {states:4,lit:"true",facing:"$(facing_nesw_next)",signal_fire:"false",waterlogged:"true"}
$execute if block ~ ~ ~ #minecraft:campfires[lit=true,signal_fire=true,waterlogged=false] run return run function elemental_tools:generic/block/facing/campfires {states:4,lit:"true",facing:"$(facing_nesw_next)",signal_fire:"true",waterlogged:"false"}
$execute if block ~ ~ ~ #minecraft:campfires[lit=true,signal_fire=true,waterlogged=true] run return run function elemental_tools:generic/block/facing/campfires {states:4,lit:"true",facing:"$(facing_nesw_next)",signal_fire:"true",waterlogged:"true"}

# N/E/S/W - Chiseled Bookshelves
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=false] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=true] run return run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=true,facing=$(facing_nesw_next)]

# N/E/S/W - Copper Chests
$execute if block ~ ~ ~ #minecraft:copper_chests[type=single,waterlogged=false] run return run function elemental_tools:generic/block/facing/copper_chests {states:4,facing:"$(facing_nesw_next)",type:"single",waterlogged:"false"}
$execute if block ~ ~ ~ #minecraft:copper_chests[type=single,waterlogged=true] run return run function elemental_tools:generic/block/facing/copper_chests {states:4,facing:"$(facing_nesw_next)",type:"single",waterlogged:"true"}

# N/E/S/W - Copper Golem Statues
$execute if block ~ ~ ~ #minecraft:copper_golem_statues[copper_golem_pose=sitting,waterlogged=false] run return run function elemental_tools:generic/block/facing/copper_golem_statues {states:4,copper_golem_pose:"sitting",facing:"$(facing_nesw_next)",waterlogged:"false"}
$execute if block ~ ~ ~ #minecraft:copper_golem_statues[copper_golem_pose=sitting,waterlogged=true] run return run function elemental_tools:generic/block/facing/copper_golem_statues {states:4,copper_golem_pose:"sitting",facing:"$(facing_nesw_next)",waterlogged:"true"}
$execute if block ~ ~ ~ #minecraft:copper_golem_statues[copper_golem_pose=standing,waterlogged=false] run return run function elemental_tools:generic/block/facing/copper_golem_statues {states:4,copper_golem_pose:"standing",facing:"$(facing_nesw_next)",waterlogged:"false"}
$execute if block ~ ~ ~ #minecraft:copper_golem_statues[copper_golem_pose=standing,waterlogged=true] run return run function elemental_tools:generic/block/facing/copper_golem_statues {states:4,copper_golem_pose:"standing",facing:"$(facing_nesw_next)",waterlogged:"true"}
$execute if block ~ ~ ~ #minecraft:copper_golem_statues[copper_golem_pose=running,waterlogged=false] run return run function elemental_tools:generic/block/facing/copper_golem_statues {states:4,copper_golem_pose:"running",facing:"$(facing_nesw_next)",waterlogged:"false"}
$execute if block ~ ~ ~ #minecraft:copper_golem_statues[copper_golem_pose=running,waterlogged=true] run return run function elemental_tools:generic/block/facing/copper_golem_statues {states:4,copper_golem_pose:"running",facing:"$(facing_nesw_next)",waterlogged:"true"}
$execute if block ~ ~ ~ #minecraft:copper_golem_statues[copper_golem_pose=star,waterlogged=false] run return run function elemental_tools:generic/block/facing/copper_golem_statues {states:4,copper_golem_pose:"star",facing:"$(facing_nesw_next)",waterlogged:"false"}
$execute if block ~ ~ ~ #minecraft:copper_golem_statues[copper_golem_pose=star,waterlogged=true] run return run function elemental_tools:generic/block/facing/copper_golem_statues {states:4,copper_golem_pose:"star",facing:"$(facing_nesw_next)",waterlogged:"true"}

# N/E/S/W - Fence Gates
$execute if block ~ ~ ~ acacia_fence_gate run return run setblock ~ ~ ~ acacia_fence_gate[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ bamboo_fence_gate run return run setblock ~ ~ ~ bamboo_fence_gate[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ birch_fence_gate run return run setblock ~ ~ ~ birch_fence_gate[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ cherry_fence_gate run return run setblock ~ ~ ~ cherry_fence_gate[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ crimson_fence_gate run return run setblock ~ ~ ~ crimson_fence_gate[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ dark_oak_fence_gate run return run setblock ~ ~ ~ dark_oak_fence_gate[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ jungle_fence_gate run return run setblock ~ ~ ~ jungle_fence_gate[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ mangrove_fence_gate run return run setblock ~ ~ ~ mangrove_fence_gate[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ oak_fence_gate run return run setblock ~ ~ ~ oak_fence_gate[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ pale_oak_fence_gate run return run setblock ~ ~ ~ pale_oak_fence_gate[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ spruce_fence_gate run return run setblock ~ ~ ~ spruce_fence_gate[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ warped_fence_gate run return run setblock ~ ~ ~ warped_fence_gate[facing=$(facing_nesw_next)]

# N/E/S/W - General
$execute if block ~ ~ ~ anvil run return run setblock ~ ~ ~ anvil[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ bell[attachment=ceiling] run return run setblock ~ ~ ~ bell[attachment=ceiling,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ bell[attachment=floor] run return run setblock ~ ~ ~ bell[attachment=floor,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ blast_furnace[lit=false] run return run setblock ~ ~ ~ blast_furnace[lit=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ blast_furnace[lit=true] run return run setblock ~ ~ ~ blast_furnace[lit=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ carved_pumpkin run return run setblock ~ ~ ~ carved_pumpkin[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chipped_anvil run return run setblock ~ ~ ~ chipped_anvil[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ comparator[mode=compare] run return run setblock ~ ~ ~ comparator[mode=compare,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ comparator[mode=subtract] run return run setblock ~ ~ ~ comparator[mode=subtract,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ damaged_anvil run return run setblock ~ ~ ~ damaged_anvil[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ decorated_pot[waterlogged=false] run return run setblock ~ ~ ~ decorated_pot[waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ decorated_pot[waterlogged=true] run return run setblock ~ ~ ~ decorated_pot[waterlogged=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ end_portal_frame[eye=false] run return run setblock ~ ~ ~ end_portal_frame[eye=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ end_portal_frame[eye=true] run return run setblock ~ ~ ~ end_portal_frame[eye=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ ender_chest[waterlogged=false] run return run setblock ~ ~ ~ ender_chest[waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ ender_chest[waterlogged=true] run return run setblock ~ ~ ~ ender_chest[waterlogged=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ furnace[lit=false] run return run setblock ~ ~ ~ furnace[lit=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ furnace[lit=true] run return run setblock ~ ~ ~ furnace[lit=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ grindstone[face=ceiling] run return run setblock ~ ~ ~ grindstone[face=ceiling,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ grindstone[face=floor] run return run setblock ~ ~ ~ grindstone[face=floor,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ grindstone[face=wall] run return run setblock ~ ~ ~ grindstone[face=wall,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ jack_o_lantern run return run setblock ~ ~ ~ jack_o_lantern[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ leaf_litter[segment_amount=1] run return run setblock ~ ~ ~ leaf_litter[segment_amount=1,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ leaf_litter[segment_amount=2] run return run setblock ~ ~ ~ leaf_litter[segment_amount=2,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ leaf_litter[segment_amount=3] run return run setblock ~ ~ ~ leaf_litter[segment_amount=3,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ leaf_litter[segment_amount=4] run return run setblock ~ ~ ~ leaf_litter[segment_amount=4,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ lectern[has_book=false] run return run setblock ~ ~ ~ lectern[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ lectern[has_book=true] run return run setblock ~ ~ ~ lectern[has_book=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ lever[face=ceiling,powered=false] run return run setblock ~ ~ ~ lever[face=ceiling,powered=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ lever[face=ceiling,powered=true] run return run setblock ~ ~ ~ lever[face=ceiling,powered=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ lever[face=floor,powered=false] run return run setblock ~ ~ ~ lever[face=floor,powered=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ lever[face=floor,powered=true] run return run setblock ~ ~ ~ lever[face=floor,powered=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ loom run return run setblock ~ ~ ~ loom[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ repeater[delay=1] run return run setblock ~ ~ ~ repeater[delay=1,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ repeater[delay=2] run return run setblock ~ ~ ~ repeater[delay=2,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ repeater[delay=3] run return run setblock ~ ~ ~ repeater[delay=3,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ repeater[delay=4] run return run setblock ~ ~ ~ repeater[delay=4,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ smoker[lit=false] run return run setblock ~ ~ ~ smoker[lit=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ smoker[lit=true] run return run setblock ~ ~ ~ smoker[lit=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ stonecutter run return run setblock ~ ~ ~ stonecutter[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ vault[ominous=false,vault_state=inactive] run return run setblock ~ ~ ~ vault[ominous=false,vault_state=inactive,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ vault[ominous=false,vault_state=active] run return run setblock ~ ~ ~ vault[ominous=false,vault_state=active,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ vault[ominous=true,vault_state=inactive] run return run setblock ~ ~ ~ vault[ominous=true,vault_state=inactive,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ vault[ominous=true,vault_state=active] run return run setblock ~ ~ ~ vault[ominous=true,vault_state=active,facing=$(facing_nesw_next)]

# N/E/S/W - Terracotta
$execute if block ~ ~ ~ black_glazed_terracotta run return run setblock ~ ~ ~ black_glazed_terracotta[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ blue_glazed_terracotta run return run setblock ~ ~ ~ blue_glazed_terracotta[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ brown_glazed_terracotta run return run setblock ~ ~ ~ brown_glazed_terracotta[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ cyan_glazed_terracotta run return run setblock ~ ~ ~ cyan_glazed_terracotta[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ gray_glazed_terracotta run return run setblock ~ ~ ~ gray_glazed_terracotta[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ green_glazed_terracotta run return run setblock ~ ~ ~ green_glazed_terracotta[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ light_blue_glazed_terracotta run return run setblock ~ ~ ~ light_blue_glazed_terracotta[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ light_gray_glazed_terracotta run return run setblock ~ ~ ~ light_gray_glazed_terracotta[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ lime_glazed_terracotta run return run setblock ~ ~ ~ lime_glazed_terracotta[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ magenta_glazed_terracotta run return run setblock ~ ~ ~ magenta_glazed_terracotta[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ orange_glazed_terracotta run return run setblock ~ ~ ~ orange_glazed_terracotta[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ pink_glazed_terracotta run return run setblock ~ ~ ~ pink_glazed_terracotta[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ purple_glazed_terracotta run return run setblock ~ ~ ~ purple_glazed_terracotta[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ red_glazed_terracotta run return run setblock ~ ~ ~ red_glazed_terracotta[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ white_glazed_terracotta run return run setblock ~ ~ ~ white_glazed_terracotta[facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ yellow_glazed_terracotta run return run setblock ~ ~ ~ yellow_glazed_terracotta[facing=$(facing_nesw_next)]

# N/E/S/W - Wooden Chests
$execute if block ~ ~ ~ chest[type=single,waterlogged=false] run return run setblock ~ ~ ~ chest[type=single,waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ chest[type=single,waterlogged=true] run return run setblock ~ ~ ~ chest[type=single,waterlogged=true,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ trapped_chest[waterlogged=false] run return run setblock ~ ~ ~ trapped_chest[waterlogged=false,facing=$(facing_nesw_next)]
$execute if block ~ ~ ~ trapped_chest[waterlogged=true] run return run setblock ~ ~ ~ trapped_chest[waterlogged=true,facing=$(facing_nesw_next)]

# N/E/S/W - Wooden Shelves
$execute if block ~ ~ ~ #minecraft:wooden_shelves[powered=false,waterlogged=false] run return run function elemental_tools:generic/block/facing/wooden_shelves {states:4,facing:"$(facing_nesw_next)",powered:"false",side_chain:"unconnected",waterlogged:"false"}
$execute if block ~ ~ ~ #minecraft:wooden_shelves[powered=false,waterlogged=true] run return run function elemental_tools:generic/block/facing/wooden_shelves {states:4,facing:"$(facing_nesw_next)",powered:"false",side_chain:"unconnected",waterlogged:"true"}

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states_2)

# N/E/S/W/D - General
$execute if block ~ ~ ~ hopper run return run setblock ~ ~ ~ hopper[facing=$(facing_neswd_next)]

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states_3)

# N/E/S/W/U/D - General
$execute if block ~ ~ ~ barrel run return run setblock ~ ~ ~ barrel[facing=$(facing_neswud_next)]
$execute if block ~ ~ ~ dispenser run return run setblock ~ ~ ~ dispenser[facing=$(facing_neswud_next)]
$execute if block ~ ~ ~ dropper run return run setblock ~ ~ ~ dropper[facing=$(facing_neswud_next)]
$execute if block ~ ~ ~ end_rod run return run setblock ~ ~ ~ end_rod[facing=$(facing_neswud_next)]
$execute if block ~ ~ ~ observer run return run setblock ~ ~ ~ observer[facing=$(facing_neswud_next)]
$execute if block ~ ~ ~ piston[extended=false] run return run setblock ~ ~ ~ piston[facing=$(facing_neswud_next)]
$execute if block ~ ~ ~ sticky_piston[extended=false] run return run setblock ~ ~ ~ sticky_piston[facing=$(facing_neswud_next)]

# N/E/S/W/U/D - Lightning Rods
$execute if block ~ ~ ~ #minecraft:lightning_rods[powered=false,waterlogged=false] run return run function elemental_tools:generic/block/facing/lightning_rods {states:6,facing:"$(facing_neswud_next)",powered:"false",waterlogged:"false"}
$execute if block ~ ~ ~ #minecraft:lightning_rods[powered=false,waterlogged=true] run return run function elemental_tools:generic/block/facing/lightning_rods {states:6,facing:"$(facing_neswud_next)",powered:"false",waterlogged:"true"}
$execute if block ~ ~ ~ #minecraft:lightning_rods[powered=true,waterlogged=false] run return run function elemental_tools:generic/block/facing/lightning_rods {states:6,facing:"$(facing_neswud_next)",powered:"true",waterlogged:"false"}
$execute if block ~ ~ ~ #minecraft:lightning_rods[powered=true,waterlogged=true] run return run function elemental_tools:generic/block/facing/lightning_rods {states:6,facing:"$(facing_neswud_next)",powered:"true",waterlogged:"true"}

# N/E/S/W/U/D - Shulker Boxes
$execute if block ~ ~ ~ #minecraft:shulker_boxes run return run function elemental_tools:generic/block/facing/shulker_boxes {states:6,facing:"$(facing_neswud_next)"}