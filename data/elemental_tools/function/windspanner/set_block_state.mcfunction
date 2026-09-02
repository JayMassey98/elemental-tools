## Set the state of a block via its corresponding rotate function.

# Axis (X/Y/Z)
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[axis=x] run return run function elemental_tools:windspanner/block/axis {states:3,axis_next:"y",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[axis=y] run return run function elemental_tools:windspanner/block/axis {states:3,axis_next:"z",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[axis=z] run return run function elemental_tools:windspanner/block/axis {states:3,axis_next:"x",waterlogged:"$(waterlogged)"}

# Facing (N/E/S/W) - Stairs
$execute if block ~ ~ ~ #minecraft:stairs[facing=north,half=bottom] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"north",half:"top",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:stairs[facing=north,half=top] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"east",half:"bottom",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:stairs[facing=east,half=bottom] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"east",half:"top",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:stairs[facing=east,half=top] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"south",half:"bottom",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:stairs[facing=south,half=bottom] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"south",half:"top",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:stairs[facing=south,half=top] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"west",half:"bottom",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:stairs[facing=west,half=bottom] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"west",half:"top",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:stairs[facing=west,half=top] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"north",half:"bottom",waterlogged:"$(waterlogged)"}

# Facing (N/E/S/W/U/D)
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[facing=north] run return run function elemental_tools:windspanner/block/facing_nesw {states_neswud:6,states_neswd:5,states_nesw:4,facing_neswud_next:"east",facing_nesw_next:"east",facing_neswd_next:"east",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[facing=east] run return run function elemental_tools:windspanner/block/facing_nesw {states_neswud:6,states_neswd:5,states_nesw:4,facing_neswud_next:"south",facing_nesw_next:"south",facing_neswd_next:"south",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[facing=south] run return run function elemental_tools:windspanner/block/facing_nesw {states_neswud:6,states_neswd:5,states_nesw:4,facing_neswud_next:"west",facing_nesw_next:"west",facing_neswd_next:"west",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[facing=west] run return run function elemental_tools:windspanner/block/facing_nesw {states_neswud:6,states_neswd:5,states_nesw:4,facing_neswud_next:"up",facing_nesw_next:"north",facing_neswd_next:"down",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[facing=up] run return run function elemental_tools:windspanner/block/facing_neswud {states_neswud:6,states_neswd:5,states_nesw:4,facing_neswud_next:"down",facing_nesw_next:"down",facing_neswd_next:"down",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[facing=down] run return run function elemental_tools:windspanner/block/facing_neswud {states_neswud:6,states_neswd:5,states_nesw:4,facing_neswud_next:"north",facing_neswd_next:"north",facing_nesw_next:"north",waterlogged:"$(waterlogged)"}

# Rotation (0-15)
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=0] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:1,waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=1] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:2,waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=2] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:3,waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=3] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:4,waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=4] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:5,waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=5] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:6,waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=6] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:7,waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=7] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:8,waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=8] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:9,waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=9] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:10,waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=10] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:11,waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=11] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:12,waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=12] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:13,waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=13] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:14,waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=14] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:15,waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=15] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:0,waterlogged:"$(waterlogged)"}

# Shape (NS/EW/SE/SW/NW/NE)
$execute if block ~ ~ ~ #minecraft:rails[shape=ascending_east] run return run function elemental_tools:windspanner/block/shape {states_standard:6,states_utility:2,shape_2_next:"north_south",shape_6_next:"north_south",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:rails[shape=ascending_west] run return run function elemental_tools:windspanner/block/shape {states_standard:6,states_utility:2,shape_2_next:"north_south",shape_6_next:"north_south",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:rails[shape=ascending_north] run return run function elemental_tools:windspanner/block/shape {states_standard:6,states_utility:2,shape_2_next:"north_south",shape_6_next:"north_south",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:rails[shape=ascending_south] run return run function elemental_tools:windspanner/block/shape {states_standard:6,states_utility:2,shape_2_next:"north_south",shape_6_next:"north_south",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:rails[shape=north_south] run return run function elemental_tools:windspanner/block/shape {states_standard:6,states_utility:2,shape_2_next:"east_west",shape_6_next:"east_west",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:rails[shape=east_west] run return run function elemental_tools:windspanner/block/shape {states_standard:6,states_utility:2,shape_2_next:"north_south",shape_6_next:"south_east",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ rail[shape=south_east] run return run function elemental_tools:windspanner/block/shape {states_standard:6,states_utility:2,shape_2_next:"south_west",shape_6_next:"south_west",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ rail[shape=south_west] run return run function elemental_tools:windspanner/block/shape {states_standard:6,states_utility:2,shape_2_next:"north_west",shape_6_next:"north_west",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ rail[shape=north_west] run return run function elemental_tools:windspanner/block/shape {states_standard:6,states_utility:2,shape_2_next:"north_east",shape_6_next:"north_east",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ rail[shape=north_east] run return run function elemental_tools:windspanner/block/shape {states_standard:6,states_utility:2,shape_2_next:"north_south",shape_6_next:"north_south",waterlogged:"$(waterlogged)"}

# Type (T/B)
$execute if block ~ ~ ~ #minecraft:slabs[type=top] run return run function elemental_tools:windspanner/block/type {states:2,type_next:"bottom",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:slabs[type=bottom] run return run function elemental_tools:windspanner/block/type {states:2,type_next:"top",waterlogged:"$(waterlogged)"}