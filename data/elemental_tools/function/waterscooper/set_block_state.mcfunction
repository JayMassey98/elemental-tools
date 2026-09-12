## Set the state of a block via its corresponding plumb function.

# Set Position
scoreboard players set @s elemental_tools_durability_chance_maximum 2

# Axis (X/Y/Z)
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[axis=x] run return run function elemental_tools:waterscooper/block/axis {axis:"x",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[axis=y] run return run function elemental_tools:waterscooper/block/axis {axis:"y",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[axis=z] run return run function elemental_tools:waterscooper/block/axis {axis:"z",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}

# Connection (N+E+S+W)
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[east=false,north=false,south=false,west=false] run return run function elemental_tools:waterscooper/block/connection {east:"false",north:"false",south:"false",west:"false",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[east=false,north=false,south=false,west=true] run return run function elemental_tools:waterscooper/block/connection {east:"false",north:"false",south:"false",west:"true",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[east=false,north=false,south=true,west=false] run return run function elemental_tools:waterscooper/block/connection {east:"false",north:"false",south:"true",west:"false",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[east=false,north=false,south=true,west=true] run return run function elemental_tools:waterscooper/block/connection {east:"false",north:"false",south:"true",west:"true",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[east=false,north=true,south=false,west=false] run return run function elemental_tools:waterscooper/block/connection {east:"false",north:"true",south:"false",west:"false",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[east=false,north=true,south=false,west=true] run return run function elemental_tools:waterscooper/block/connection {east:"false",north:"true",south:"false",west:"true",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[east=false,north=true,south=true,west=false] run return run function elemental_tools:waterscooper/block/connection {east:"false",north:"true",south:"true",west:"false",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[east=false,north=true,south=true,west=true] run return run function elemental_tools:waterscooper/block/connection {east:"false",north:"true",south:"true",west:"true",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[east=true,north=false,south=false,west=false] run return run function elemental_tools:waterscooper/block/connection {east:"true",north:"false",south:"false",west:"false",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[east=true,north=false,south=false,west=true] run return run function elemental_tools:waterscooper/block/connection {east:"true",north:"false",south:"false",west:"true",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[east=true,north=false,south=true,west=false] run return run function elemental_tools:waterscooper/block/connection {east:"true",north:"false",south:"true",west:"false",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[east=true,north=false,south=true,west=true] run return run function elemental_tools:waterscooper/block/connection {east:"true",north:"false",south:"true",west:"true",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[east=true,north=true,south=false,west=false] run return run function elemental_tools:waterscooper/block/connection {east:"true",north:"true",south:"false",west:"false",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[east=true,north=true,south=false,west=true] run return run function elemental_tools:waterscooper/block/connection {east:"true",north:"true",south:"false",west:"true",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[east=true,north=true,south=true,west=false] run return run function elemental_tools:waterscooper/block/connection {east:"true",north:"true",south:"true",west:"false",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[east=true,north=true,south=true,west=true] run return run function elemental_tools:waterscooper/block/connection {east:"true",north:"true",south:"true",west:"true",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}

# Connection (N+E+S+W+U) - Walls
$execute if block ~ ~ ~ #minecraft:walls run return run function elemental_tools:generic/block/connection/walls_step_1 {function:"generic/block/connection/walls",waterlogged:"$(waterlogged_next)"}

# Facing (N/E/S/W/U/D)
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[facing=north] run return run function elemental_tools:waterscooper/block/facing_nesw {facing:"north",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[facing=east] run return run function elemental_tools:waterscooper/block/facing_nesw {facing:"east",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[facing=south] run return run function elemental_tools:waterscooper/block/facing_nesw {facing:"south",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[facing=west] run return run function elemental_tools:waterscooper/block/facing_nesw {facing:"west",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[facing=up] run return run function elemental_tools:waterscooper/block/facing_neswud {facing:"up",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[facing=down] run return run function elemental_tools:waterscooper/block/facing_neswud {facing:"down",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}

# Rotation (0-15)
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[rotation=0] run return run function elemental_tools:waterscooper/block/rotation {rotation:0,waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[rotation=1] run return run function elemental_tools:waterscooper/block/rotation {rotation:1,waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[rotation=2] run return run function elemental_tools:waterscooper/block/rotation {rotation:2,waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[rotation=3] run return run function elemental_tools:waterscooper/block/rotation {rotation:3,waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[rotation=4] run return run function elemental_tools:waterscooper/block/rotation {rotation:4,waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[rotation=5] run return run function elemental_tools:waterscooper/block/rotation {rotation:5,waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[rotation=6] run return run function elemental_tools:waterscooper/block/rotation {rotation:6,waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[rotation=7] run return run function elemental_tools:waterscooper/block/rotation {rotation:7,waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[rotation=8] run return run function elemental_tools:waterscooper/block/rotation {rotation:8,waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[rotation=9] run return run function elemental_tools:waterscooper/block/rotation {rotation:9,waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[rotation=10] run return run function elemental_tools:waterscooper/block/rotation {rotation:10,waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[rotation=11] run return run function elemental_tools:waterscooper/block/rotation {rotation:11,waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[rotation=12] run return run function elemental_tools:waterscooper/block/rotation {rotation:12,waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[rotation=13] run return run function elemental_tools:waterscooper/block/rotation {rotation:13,waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[rotation=13] run return run function elemental_tools:waterscooper/block/rotation {rotation:13,waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[rotation=14] run return run function elemental_tools:waterscooper/block/rotation {rotation:14,waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[rotation=15] run return run function elemental_tools:waterscooper/block/rotation {rotation:15,waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}

# Shape (NS/EW/SE/SW/NW/NE) - Rails
$execute if block ~ ~ ~ rail[shape=south_east] run return run function elemental_tools:waterscooper/block/shape {shape:"south_east",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ rail[shape=south_west] run return run function elemental_tools:waterscooper/block/shape {shape:"south_west",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ rail[shape=north_west] run return run function elemental_tools:waterscooper/block/shape {shape:"north_west",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ rail[shape=north_east] run return run function elemental_tools:waterscooper/block/shape {shape:"north_east",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:rails[shape=ascending_east] run return run function elemental_tools:waterscooper/block/shape {shape:"ascending_east",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:rails[shape=ascending_west] run return run function elemental_tools:waterscooper/block/shape {shape:"ascending_west",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:rails[shape=ascending_north] run return run function elemental_tools:waterscooper/block/shape {shape:"ascending_north",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:rails[shape=ascending_south] run return run function elemental_tools:waterscooper/block/shape {shape:"ascending_south",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:rails[shape=north_south] run return run function elemental_tools:waterscooper/block/shape {shape:"north_south",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:rails[shape=east_west] run return run function elemental_tools:waterscooper/block/shape {shape:"east_west",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}

# Type (T/B) - Slabs
$execute if block ~ ~ ~ #minecraft:slabs[type=top] run return run function elemental_tools:waterscooper/block/type {type:"top",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:slabs[type=bottom] run return run function elemental_tools:waterscooper/block/type {type:"bottom",waterlogged:"$(waterlogged)",waterlogged_next:"$(waterlogged_next)"}

# Static
execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[waterlogged=false] run return run function elemental_tools:waterscooper/block/static {waterlogged:"false",waterlogged_next:"true"}
execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[waterlogged=true] run return run function elemental_tools:waterscooper/block/static {waterlogged:"true",waterlogged_next:"false"}

# Remaining
execute if block ~ ~ ~ minecraft:lava run playsound minecraft:block.lava.extinguish block @a[distance=..16] ~ ~ ~ 0.5 1 1
execute if block ~ ~ ~ minecraft:lava run return run setblock ~ ~ ~ obsidian
execute if block ~ ~ ~ minecraft:water run return run setblock ~ ~ ~ air
execute if block ~ ~ ~ minecraft:sponge run return run setblock ~ ~ ~ wet_sponge
execute if block ~ ~ ~ minecraft:wet_sponge run return run setblock ~ ~ ~ sponge
execute if block ~ ~ ~ #minecraft:washed_away_by_fluids run return run setblock ~ ~ ~ water destroy