## Change blocks with specific connection (N+E+S+W+U+D) properties that match the outlined criteria.

# N+E+S+W+U - Walls
$execute if block ~ ~ ~ #minecraft:walls[west=low] run return run function elemental_tools:generic/block/connection/walls_step_5 {east:"$(east)",function:"$(function)",north:"$(north)",south:"$(south)",waterlogged:"$(waterlogged)",west:"low"}
$execute if block ~ ~ ~ #minecraft:walls[west=none] run return run function elemental_tools:generic/block/connection/walls_step_5 {east:"$(east)",function:"$(function)",north:"$(north)",south:"$(south)",waterlogged:"$(waterlogged)",west:"none"}
$execute if block ~ ~ ~ #minecraft:walls[west=tall] run return run function elemental_tools:generic/block/connection/walls_step_5 {east:"$(east)",function:"$(function)",north:"$(north)",south:"$(south)",waterlogged:"$(waterlogged)",west:"tall"}