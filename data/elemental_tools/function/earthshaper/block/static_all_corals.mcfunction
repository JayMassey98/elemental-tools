## Alter blocks with specific static properties that match the outlined criteria.

# Corals -> Dead Corals
$execute if block ~ ~ ~ #minecraft:corals run function elemental_tools:earthshaper/invoke_sound {sound:"$(sound)"}
$execute if block ~ ~ ~ brain_coral run return run setblock ~ ~ ~ dead_brain_coral[waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ brain_coral_fan run return run setblock ~ ~ ~ dead_brain_coral_fan[waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ bubble_coral run return run setblock ~ ~ ~ dead_bubble_coral[waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ bubble_coral_fan run return run setblock ~ ~ ~ dead_bubble_coral_fan[waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ fire_coral run return run setblock ~ ~ ~ dead_fire_coral[waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ fire_coral_fan run return run setblock ~ ~ ~ dead_fire_coral_fan[waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ horn_coral run return run setblock ~ ~ ~ dead_horn_coral[waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ horn_coral_fan run return run setblock ~ ~ ~ dead_horn_coral_fan[waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ tube_coral run return run setblock ~ ~ ~ dead_tube_coral[waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ tube_coral_fan run return run setblock ~ ~ ~ dead_tube_coral_fan[waterlogged=$(waterlogged)]

# Dead Corals -> Corals
$execute if block ~ ~ ~ #elemental_tools:dead_corals run function elemental_tools:earthshaper/invoke_sound {sound:"$(sound)"}
$execute if block ~ ~ ~ dead_brain_coral run return run setblock ~ ~ ~ brain_coral[waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ dead_brain_coral_fan run return run setblock ~ ~ ~ brain_coral_fan[waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ dead_bubble_coral run return run setblock ~ ~ ~ bubble_coral[waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ dead_bubble_coral_fan run return run setblock ~ ~ ~ bubble_coral_fan[waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ dead_fire_coral run return run setblock ~ ~ ~ fire_coral[waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ dead_fire_coral_fan run return run setblock ~ ~ ~ fire_coral_fan[waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ dead_horn_coral run return run setblock ~ ~ ~ horn_coral[waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ dead_horn_coral_fan run return run setblock ~ ~ ~ horn_coral_fan[waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ dead_tube_coral run return run setblock ~ ~ ~ tube_coral[waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ dead_tube_coral_fan run return run setblock ~ ~ ~ tube_coral_fan[waterlogged=$(waterlogged)]