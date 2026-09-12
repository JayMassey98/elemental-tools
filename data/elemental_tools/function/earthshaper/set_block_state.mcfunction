## Set the state of a block via its corresponding alter function.

# Set Position
# $scoreboard players set @s elemental_tools_durability_chance_maximum 1

# Axis (X/Y/Z)
$execute if block ~ ~ ~ #elemental_tools:triggers_earthshaper[axis=x] run return run function elemental_tools:earthshaper/block/axis {axis:"x",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_earthshaper[axis=y] run return run function elemental_tools:earthshaper/block/axis {axis:"y",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_earthshaper[axis=z] run return run function elemental_tools:earthshaper/block/axis {axis:"z",waterlogged:"$(waterlogged)"}

# Connection (N+E+S+W+U)
$execute if block ~ ~ ~ #minecraft:walls run return run function elemental_tools:generic/block/connection/walls_step_1 {function:"earthshaper/block/connection_walls",waterlogged:"$(waterlogged)"}

# Facing (N/E/S/W/U/D)
$execute if block ~ ~ ~ #elemental_tools:triggers_earthshaper[facing=east] run return run function elemental_tools:earthshaper/block/facing {facing:"east",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_earthshaper[facing=north] run return run function elemental_tools:earthshaper/block/facing {facing:"north",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_earthshaper[facing=south] run return run function elemental_tools:earthshaper/block/facing {facing:"south",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_earthshaper[facing=west] run return run function elemental_tools:earthshaper/block/facing {facing:"west",waterlogged:"$(waterlogged)"}

# Type (T/B)
$execute if block ~ ~ ~ #elemental_tools:triggers_earthshaper[type=bottom] run return run function elemental_tools:earthshaper/block/type {type:"bottom",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #elemental_tools:triggers_earthshaper[type=top] run return run function elemental_tools:earthshaper/block/type {type:"top",waterlogged:"$(waterlogged)"}

# Static
$execute if block ~ ~ ~ #elemental_tools:triggers_earthshaper run return run function elemental_tools:earthshaper/block/static {waterlogged:"$(waterlogged)"}