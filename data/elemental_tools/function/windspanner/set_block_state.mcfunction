## Set the state of a block via its corresponding rotate function.

# Axis (X/Y/Z)
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[axis=x] run return run function elemental_tools:windspanner/block/axis {states:3,axis_next:"y"}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[axis=y] run return run function elemental_tools:windspanner/block/axis {states:3,axis_next:"z"}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[axis=z] run return run function elemental_tools:windspanner/block/axis {states:3,axis_next:"x"}

# Facing (N/E/S/W) - Stairs
execute if block ~ ~ ~ #minecraft:stairs[facing=north,half=bottom,waterlogged=false] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"north",half:"top",waterlogged:"false"}
execute if block ~ ~ ~ #minecraft:stairs[facing=north,half=bottom,waterlogged=true] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"north",half:"top",waterlogged:"true"}
execute if block ~ ~ ~ #minecraft:stairs[facing=north,half=top,waterlogged=false] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"east",half:"bottom",waterlogged:"false"}
execute if block ~ ~ ~ #minecraft:stairs[facing=north,half=top,waterlogged=true] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"east",half:"bottom",waterlogged:"true"}
execute if block ~ ~ ~ #minecraft:stairs[facing=east,half=bottom,waterlogged=false] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"east",half:"top",waterlogged:"false"}
execute if block ~ ~ ~ #minecraft:stairs[facing=east,half=bottom,waterlogged=true] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"east",half:"top",waterlogged:"true"}
execute if block ~ ~ ~ #minecraft:stairs[facing=east,half=top,waterlogged=false] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"south",half:"bottom",waterlogged:"false"}
execute if block ~ ~ ~ #minecraft:stairs[facing=east,half=top,waterlogged=true] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"south",half:"bottom",waterlogged:"true"}
execute if block ~ ~ ~ #minecraft:stairs[facing=south,half=bottom,waterlogged=false] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"south",half:"top",waterlogged:"false"}
execute if block ~ ~ ~ #minecraft:stairs[facing=south,half=bottom,waterlogged=true] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"south",half:"top",waterlogged:"true"}
execute if block ~ ~ ~ #minecraft:stairs[facing=south,half=top,waterlogged=false] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"west",half:"bottom",waterlogged:"false"}
execute if block ~ ~ ~ #minecraft:stairs[facing=south,half=top,waterlogged=true] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"west",half:"bottom",waterlogged:"true"}
execute if block ~ ~ ~ #minecraft:stairs[facing=west,half=bottom,waterlogged=false] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"west",half:"top",waterlogged:"false"}
execute if block ~ ~ ~ #minecraft:stairs[facing=west,half=bottom,waterlogged=true] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"west",half:"top",waterlogged:"true"}
execute if block ~ ~ ~ #minecraft:stairs[facing=west,half=top,waterlogged=false] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"north",half:"bottom",waterlogged:"false"}
execute if block ~ ~ ~ #minecraft:stairs[facing=west,half=top,waterlogged=true] run return run function elemental_tools:generic/block/facing/stairs {states:8,facing:"north",half:"bottom",waterlogged:"true"}

# Facing (N/E/S/W/U/D)
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[facing=north] run return run function elemental_tools:windspanner/block/facing_nesw {states:4,states_2:5,states_3:6,facing_nesw_next:"east",facing_neswd_next:"east",facing_neswud_next:"east"}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[facing=east] run return run function elemental_tools:windspanner/block/facing_nesw {states:4,states_2:5,states_3:6,facing_nesw_next:"south",facing_neswd_next:"south",facing_neswud_next:"south"}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[facing=south] run return run function elemental_tools:windspanner/block/facing_nesw {states:4,states_2:5,states_3:6,facing_nesw_next:"west",facing_neswd_next:"west",facing_neswud_next:"west"}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[facing=west] run return run function elemental_tools:windspanner/block/facing_nesw {states:4,states_2:5,states_3:6,facing_nesw_next:"north",facing_neswd_next:"down",facing_neswud_next:"up"}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[facing=up] run return run function elemental_tools:windspanner/block/facing_neswud {states:6,states_2:5,states_3:6,facing_neswud_next:"down"}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[facing=down] run return run function elemental_tools:windspanner/block/facing_neswd {states:5,states_2:6,facing_neswd_next:"north",facing_neswud_next:"north"}

# Rotation (0-15)
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=0] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:1}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=1] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:2}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=2] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:3}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=3] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:4}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=4] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:5}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=5] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:6}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=6] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:7}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=7] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:8}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=8] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:9}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=9] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:10}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=10] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:11}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=11] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:12}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=12] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:13}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=13] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:14}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=14] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:15}
execute if block ~ ~ ~ #elemental_tools:triggers_windspanner[rotation=15] run return run function elemental_tools:windspanner/block/rotation {states:16,rotation_next:0}

# Shape (NS/EW/SE/SW/NW/NE)
execute if block ~ ~ ~ #minecraft:rails[shape=ascending_east] run return run function elemental_tools:windspanner/block/shape {states:6,shape_2_next:"north_south",shape_6_next:"north_south"}
execute if block ~ ~ ~ #minecraft:rails[shape=ascending_west] run return run function elemental_tools:windspanner/block/shape {states:6,shape_2_next:"north_south",shape_6_next:"north_south"}
execute if block ~ ~ ~ #minecraft:rails[shape=ascending_north] run return run function elemental_tools:windspanner/block/shape {states:6,shape_2_next:"north_south",shape_6_next:"north_south"}
execute if block ~ ~ ~ #minecraft:rails[shape=ascending_south] run return run function elemental_tools:windspanner/block/shape {states:6,shape_2_next:"north_south",shape_6_next:"north_south"}
execute if block ~ ~ ~ #minecraft:rails[shape=north_south] run return run function elemental_tools:windspanner/block/shape {states:6,shape_2_next:"east_west",shape_6_next:"east_west"}
execute if block ~ ~ ~ #minecraft:rails[shape=east_west] run return run function elemental_tools:windspanner/block/shape {states:6,shape_2_next:"north_south",shape_6_next:"south_east"}
execute if block ~ ~ ~ rail[shape=south_east] run return run function elemental_tools:windspanner/block/shape {states:6,shape_2_next:"south_west",shape_6_next:"south_west"}
execute if block ~ ~ ~ rail[shape=south_west] run return run function elemental_tools:windspanner/block/shape {states:6,shape_2_next:"north_west",shape_6_next:"north_west"}
execute if block ~ ~ ~ rail[shape=north_west] run return run function elemental_tools:windspanner/block/shape {states:6,shape_2_next:"north_east",shape_6_next:"north_east"}
execute if block ~ ~ ~ rail[shape=north_east] run return run function elemental_tools:windspanner/block/shape {states:6,shape_2_next:"north_south",shape_6_next:"north_south"}

# Type (T/B)
execute if block ~ ~ ~ #minecraft:slabs[type=top,waterlogged=false] run return run function elemental_tools:windspanner/block/type {states:2,type_next:"bottom",waterlogged:"false"}
execute if block ~ ~ ~ #minecraft:slabs[type=top,waterlogged=true] run return run function elemental_tools:windspanner/block/type {states:2,type_next:"bottom",waterlogged:"true"}
execute if block ~ ~ ~ #minecraft:slabs[type=bottom,waterlogged=false] run return run function elemental_tools:windspanner/block/type {states:2,type_next:"top",waterlogged:"false"}
execute if block ~ ~ ~ #minecraft:slabs[type=bottom,waterlogged=true] run return run function elemental_tools:windspanner/block/type {states:2,type_next:"top",waterlogged:"true"}