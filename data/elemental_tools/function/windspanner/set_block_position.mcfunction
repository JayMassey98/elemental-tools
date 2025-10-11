## Run the corresponding rotate function for the target block, which sets its position accordingly.

# Axis - X/Y/Z
execute if block ~ ~ ~ #elemental_tools:rotatable[axis=x] run return run function elemental_tools:windspanner/rotate/axis {position:1,axis_next:"y"}
execute if block ~ ~ ~ #elemental_tools:rotatable[axis=y] run return run function elemental_tools:windspanner/rotate/axis {position:2,axis_next:"z"}
execute if block ~ ~ ~ #elemental_tools:rotatable[axis=z] run return run function elemental_tools:windspanner/rotate/axis {position:3,axis_next:"x"}

# Facing - N/E/S/W (Stairs)
execute if block ~ ~ ~ #minecraft:stairs[facing=north,half=bottom,waterlogged=false] run return run function elemental_tools:windspanner/rotate/facing_nesw_stairs {position:4,facing_nesw_next:"north",half:"top",waterlogged:"false"}
execute if block ~ ~ ~ #minecraft:stairs[facing=north,half=bottom,waterlogged=true] run return run function elemental_tools:windspanner/rotate/facing_nesw_stairs {position:4,facing_nesw_next:"north",half:"top",waterlogged:"true"}
execute if block ~ ~ ~ #minecraft:stairs[facing=north,half=top,waterlogged=false] run return run function elemental_tools:windspanner/rotate/facing_nesw_stairs {position:4,facing_nesw_next:"east",half:"bottom",waterlogged:"false"}
execute if block ~ ~ ~ #minecraft:stairs[facing=north,half=top,waterlogged=true] run return run function elemental_tools:windspanner/rotate/facing_nesw_stairs {position:4,facing_nesw_next:"east",half:"bottom",waterlogged:"true"}
execute if block ~ ~ ~ #minecraft:stairs[facing=east,half=bottom,waterlogged=false] run return run function elemental_tools:windspanner/rotate/facing_nesw_stairs {position:5,facing_nesw_next:"east",half:"top",waterlogged:"false"}
execute if block ~ ~ ~ #minecraft:stairs[facing=east,half=bottom,waterlogged=true] run return run function elemental_tools:windspanner/rotate/facing_nesw_stairs {position:5,facing_nesw_next:"east",half:"top",waterlogged:"true"}
execute if block ~ ~ ~ #minecraft:stairs[facing=east,half=top,waterlogged=false] run return run function elemental_tools:windspanner/rotate/facing_nesw_stairs {position:5,facing_nesw_next:"south",half:"bottom",waterlogged:"false"}
execute if block ~ ~ ~ #minecraft:stairs[facing=east,half=top,waterlogged=true] run return run function elemental_tools:windspanner/rotate/facing_nesw_stairs {position:5,facing_nesw_next:"south",half:"bottom",waterlogged:"true"}
execute if block ~ ~ ~ #minecraft:stairs[facing=south,half=bottom,waterlogged=false] run return run function elemental_tools:windspanner/rotate/facing_nesw_stairs {position:6,facing_nesw_next:"south",half:"top",waterlogged:"false"}
execute if block ~ ~ ~ #minecraft:stairs[facing=south,half=bottom,waterlogged=true] run return run function elemental_tools:windspanner/rotate/facing_nesw_stairs {position:6,facing_nesw_next:"south",half:"top",waterlogged:"true"}
execute if block ~ ~ ~ #minecraft:stairs[facing=south,half=top,waterlogged=false] run return run function elemental_tools:windspanner/rotate/facing_nesw_stairs {position:6,facing_nesw_next:"west",half:"bottom",waterlogged:"false"}
execute if block ~ ~ ~ #minecraft:stairs[facing=south,half=top,waterlogged=true] run return run function elemental_tools:windspanner/rotate/facing_nesw_stairs {position:6,facing_nesw_next:"west",half:"bottom",waterlogged:"true"}
execute if block ~ ~ ~ #minecraft:stairs[facing=west,half=bottom,waterlogged=false] run return run function elemental_tools:windspanner/rotate/facing_nesw_stairs {position:7,facing_nesw_next:"west",half:"top",waterlogged:"false"}
execute if block ~ ~ ~ #minecraft:stairs[facing=west,half=bottom,waterlogged=true] run return run function elemental_tools:windspanner/rotate/facing_nesw_stairs {position:7,facing_nesw_next:"west",half:"top",waterlogged:"true"}
execute if block ~ ~ ~ #minecraft:stairs[facing=west,half=top,waterlogged=false] run return run function elemental_tools:windspanner/rotate/facing_nesw_stairs {position:7,facing_nesw_next:"north",half:"bottom",waterlogged:"false"}
execute if block ~ ~ ~ #minecraft:stairs[facing=west,half=top,waterlogged=true] run return run function elemental_tools:windspanner/rotate/facing_nesw_stairs {position:7,facing_nesw_next:"north",half:"bottom",waterlogged:"true"}

# Facing - N/E/S/W/U/D
execute if block ~ ~ ~ #elemental_tools:rotatable[facing=north] run return run function elemental_tools:windspanner/rotate/facing_nesw {position:4,facing_nesw_next:"east",facing_neswd_next:"east",facing_neswud_next:"east"}
execute if block ~ ~ ~ #elemental_tools:rotatable[facing=east] run return run function elemental_tools:windspanner/rotate/facing_nesw {position:5,facing_nesw_next:"south",facing_neswd_next:"south",facing_neswud_next:"south"}
execute if block ~ ~ ~ #elemental_tools:rotatable[facing=south] run return run function elemental_tools:windspanner/rotate/facing_nesw {position:6,facing_nesw_next:"west",facing_neswd_next:"west",facing_neswud_next:"west"}
execute if block ~ ~ ~ #elemental_tools:rotatable[facing=west] run return run function elemental_tools:windspanner/rotate/facing_nesw {position:7,facing_nesw_next:"north",facing_neswd_next:"down",facing_neswud_next:"up"}
execute if block ~ ~ ~ #elemental_tools:rotatable[facing=up] run return run function elemental_tools:windspanner/rotate/facing_neswud {position:8,facing_neswud_next:"down"}
execute if block ~ ~ ~ #elemental_tools:rotatable[facing=down] run return run function elemental_tools:windspanner/rotate/facing_neswd {position:9,facing_neswd_next:"north",facing_neswud_next:"north"}

# Rotation - 0-15
execute if block ~ ~ ~ #elemental_tools:rotatable[rotation=0] run return run function elemental_tools:windspanner/rotate/rotation {position:10,rotation_next:1}
execute if block ~ ~ ~ #elemental_tools:rotatable[rotation=1] run return run function elemental_tools:windspanner/rotate/rotation {position:11,rotation_next:2}
execute if block ~ ~ ~ #elemental_tools:rotatable[rotation=2] run return run function elemental_tools:windspanner/rotate/rotation {position:12,rotation_next:3}
execute if block ~ ~ ~ #elemental_tools:rotatable[rotation=3] run return run function elemental_tools:windspanner/rotate/rotation {position:13,rotation_next:4}
execute if block ~ ~ ~ #elemental_tools:rotatable[rotation=4] run return run function elemental_tools:windspanner/rotate/rotation {position:14,rotation_next:5}
execute if block ~ ~ ~ #elemental_tools:rotatable[rotation=5] run return run function elemental_tools:windspanner/rotate/rotation {position:15,rotation_next:6}
execute if block ~ ~ ~ #elemental_tools:rotatable[rotation=6] run return run function elemental_tools:windspanner/rotate/rotation {position:16,rotation_next:7}
execute if block ~ ~ ~ #elemental_tools:rotatable[rotation=7] run return run function elemental_tools:windspanner/rotate/rotation {position:17,rotation_next:8}
execute if block ~ ~ ~ #elemental_tools:rotatable[rotation=8] run return run function elemental_tools:windspanner/rotate/rotation {position:18,rotation_next:9}
execute if block ~ ~ ~ #elemental_tools:rotatable[rotation=9] run return run function elemental_tools:windspanner/rotate/rotation {position:19,rotation_next:10}
execute if block ~ ~ ~ #elemental_tools:rotatable[rotation=10] run return run function elemental_tools:windspanner/rotate/rotation {position:20,rotation_next:11}
execute if block ~ ~ ~ #elemental_tools:rotatable[rotation=11] run return run function elemental_tools:windspanner/rotate/rotation {position:21,rotation_next:12}
execute if block ~ ~ ~ #elemental_tools:rotatable[rotation=12] run return run function elemental_tools:windspanner/rotate/rotation {position:22,rotation_next:13}
execute if block ~ ~ ~ #elemental_tools:rotatable[rotation=13] run return run function elemental_tools:windspanner/rotate/rotation {position:23,rotation_next:14}
execute if block ~ ~ ~ #elemental_tools:rotatable[rotation=14] run return run function elemental_tools:windspanner/rotate/rotation {position:24,rotation_next:15}
execute if block ~ ~ ~ #elemental_tools:rotatable[rotation=15] run return run function elemental_tools:windspanner/rotate/rotation {position:25,rotation_next:0}

# Shape - NS/EW/SE/SW/NW/NE
execute if block ~ ~ ~ #elemental_tools:rotatable[shape=ascending_east] run return run function elemental_tools:windspanner/rotate/shape_2 {position:26,shape_2_next:"north_south",shape_6_next:"north_south"}
execute if block ~ ~ ~ #elemental_tools:rotatable[shape=ascending_west] run return run function elemental_tools:windspanner/rotate/shape_2 {position:26,shape_2_next:"north_south",shape_6_next:"north_south"}
execute if block ~ ~ ~ #elemental_tools:rotatable[shape=ascending_north] run return run function elemental_tools:windspanner/rotate/shape_2 {position:26,shape_2_next:"north_south",shape_6_next:"north_south"}
execute if block ~ ~ ~ #elemental_tools:rotatable[shape=ascending_south] run return run function elemental_tools:windspanner/rotate/shape_2 {position:26,shape_2_next:"north_south",shape_6_next:"north_south"}
execute if block ~ ~ ~ #elemental_tools:rotatable[shape=north_south] run return run function elemental_tools:windspanner/rotate/shape_2 {position:27,shape_2_next:"east_west",shape_6_next:"east_west"}
execute if block ~ ~ ~ #elemental_tools:rotatable[shape=east_west] run return run function elemental_tools:windspanner/rotate/shape_2 {position:28,shape_2_next:"north_south",shape_6_next:"south_east"}
execute if block ~ ~ ~ #elemental_tools:rotatable[shape=south_east] run return run function elemental_tools:windspanner/rotate/shape_6 {position:29,shape_6_next:"south_west"}
execute if block ~ ~ ~ #elemental_tools:rotatable[shape=south_west] run return run function elemental_tools:windspanner/rotate/shape_6 {position:30,shape_6_next:"north_west"}
execute if block ~ ~ ~ #elemental_tools:rotatable[shape=north_west] run return run function elemental_tools:windspanner/rotate/shape_6 {position:31,shape_6_next:"north_east"}
execute if block ~ ~ ~ #elemental_tools:rotatable[shape=north_east] run return run function elemental_tools:windspanner/rotate/shape_6 {position:32,shape_6_next:"north_south"}

# Type - T/B
execute if block ~ ~ ~ #elemental_tools:rotatable[type=top,waterlogged=false] run return run function elemental_tools:windspanner/rotate/type {position:33,type_next:"bottom",waterlogged:"false"}
execute if block ~ ~ ~ #elemental_tools:rotatable[type=top,waterlogged=true] run return run function elemental_tools:windspanner/rotate/type {position:33,type_next:"bottom",waterlogged:"true"}
execute if block ~ ~ ~ #elemental_tools:rotatable[type=bottom,waterlogged=false] run return run function elemental_tools:windspanner/rotate/type {position:34,type_next:"top",waterlogged:"false"}
execute if block ~ ~ ~ #elemental_tools:rotatable[type=bottom,waterlogged=true] run return run function elemental_tools:windspanner/rotate/type {position:34,type_next:"top",waterlogged:"true"}