## Change blocks with specific connection (N+E+S+W+U+D) properties that match the outlined criteria.

# N+E+S+W+U - Walls
$execute if block ~ ~ ~ #minecraft:walls[east=low] run return run function elemental_tools:generic/block/connection/walls_step_3 {east:"low",function:"$(function)",north:"$(north)",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:walls[east=none] run return run function elemental_tools:generic/block/connection/walls_step_3 {east:"none",function:"$(function)",north:"$(north)",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:walls[east=tall] run return run function elemental_tools:generic/block/connection/walls_step_3 {east:"tall",function:"$(function)",north:"$(north)",waterlogged:"$(waterlogged)"}