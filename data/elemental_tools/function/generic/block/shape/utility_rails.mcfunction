## Change blocks with specific shape (NS/EW/SE/SW/NW/NE) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# NS/EW - Utility Rails
$execute if block ~ ~ ~ activator_rail run return run setblock ~ ~ ~ activator_rail[shape=$(shape),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ detector_rail run return run setblock ~ ~ ~ detector_rail[shape=$(shape),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ powered_rail run return run setblock ~ ~ ~ powered_rail[shape=$(shape),waterlogged=$(waterlogged)]