## Change blocks with specific connection (N+E+S+W+U+D) properties that match the outlined criteria.

# N+E+S+W+U - Walls
$execute if block ~ ~ ~ #minecraft:walls[south=low] run return run function elemental_tools:generic/block/connection/walls_step_4 {east:"$(east)",function:"$(function)",north:"$(north)",south:"low",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:walls[south=none] run return run function elemental_tools:generic/block/connection/walls_step_4 {east:"$(east)",function:"$(function)",north:"$(north)",south:"none",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:walls[south=tall] run return run function elemental_tools:generic/block/connection/walls_step_4 {east:"$(east)",function:"$(function)",north:"$(north)",south:"tall",waterlogged:"$(waterlogged)"}