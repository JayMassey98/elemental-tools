## Alter blocks with specific facing (N/E/S/W/U/D) properties that match the outlined criteria.

# N/E/S/W - Coral Wall Fans -> Dead Coral Wall Fans -> ...
$execute run function elemental_tools:earthshaper/invoke_sound {sound:"$(sound)"}
$execute if block ~ ~ ~ $(prefix_1)brain_coral_wall_fan run return run setblock ~ ~ ~ $(prefix_2)brain_coral_wall_fan[facing=$(facing),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ $(prefix_1)bubble_coral_wall_fan run return run setblock ~ ~ ~ $(prefix_2)bubble_coral_wall_fan[facing=$(facing),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ $(prefix_1)fire_coral_wall_fan run return run setblock ~ ~ ~ $(prefix_2)fire_coral_wall_fan[facing=$(facing),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ $(prefix_1)horn_coral_wall_fan run return run setblock ~ ~ ~ $(prefix_2)horn_coral_wall_fan[facing=$(facing),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ $(prefix_1)tube_coral_wall_fan run return run setblock ~ ~ ~ $(prefix_2)tube_coral_wall_fan[facing=$(facing),waterlogged=$(waterlogged)]