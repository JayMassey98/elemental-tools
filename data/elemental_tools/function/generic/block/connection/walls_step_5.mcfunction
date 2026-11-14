## Change blocks with specific connection (N+E+S+W+U+D) properties that match the outlined criteria.

# N+E+S+W+U - Walls
$execute if block ~ ~ ~ #minecraft:walls[up=false] run return run function elemental_tools:$(function) {east:"$(east)",north:"$(north)",south:"$(south)",up:"false",waterlogged:"$(waterlogged)",west:"$(west)"}
$execute if block ~ ~ ~ #minecraft:walls[up=true] run return run function elemental_tools:$(function) {east:"$(east)",north:"$(north)",south:"$(south)",up:"true",waterlogged:"$(waterlogged)",west:"$(west)"}