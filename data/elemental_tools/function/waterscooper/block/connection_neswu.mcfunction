## Plumb blocks with specific connection (N+E+S+W+U+D) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# N+E+S+W+U - Walls
$execute if block ~ ~ ~ #minecraft:walls run return run function elemental_tools:generic/block/connection/walls {states:2,east:"$(east)",north:"$(north)",south:"$(south)",up:"$(up)",waterlogged:"$(waterlogged_next)",west:"$(west)"}