## Change blocks with specific static properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# Speleothems
$execute if block ~ ~ ~ pointed_dripstone run return run setblock ~ ~ ~ pointed_dripstone[thickness=$(thickness),vertical_direction=$(vertical_direction),waterlogged=$(waterlogged)]