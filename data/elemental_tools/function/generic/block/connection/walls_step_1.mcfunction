## Change blocks with specific connection (N+E+S+W+U+D) properties that match the outlined criteria.

# N+E+S+W+U - Walls
$execute if block ~ ~ ~ #minecraft:walls[north=low] run return run function elemental_tools:generic/block/connection/walls_step_2 {function:"$(function)",north:"low",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:walls[north=none] run return run function elemental_tools:generic/block/connection/walls_step_2 {function:"$(function)",north:"none",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:walls[north=tall] run return run function elemental_tools:generic/block/connection/walls_step_2 {function:"$(function)",north:"tall",waterlogged:"$(waterlogged)"}