## Change blocks with specific shape (NS/EW/SE/SW/NW/NE) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# NS/EW/SE/SW/NW/NE - Standard Rails
$execute if block ~ ~ ~ rail run return run setblock ~ ~ ~ rail[shape=$(shape),waterlogged=$(waterlogged)]