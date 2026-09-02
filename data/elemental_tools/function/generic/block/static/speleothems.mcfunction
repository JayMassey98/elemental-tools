## Change blocks with specific static properties that match the outlined criteria.

# Speleothems
$execute if block ~ ~ ~ pointed_dripstone run return run setblock ~ ~ ~ pointed_dripstone[thickness=$(thickness),vertical_direction=$(vertical_direction),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ sulfur_spike run return run setblock ~ ~ ~ sulfur_spike[thickness=$(thickness),vertical_direction=$(vertical_direction),waterlogged=$(waterlogged)]