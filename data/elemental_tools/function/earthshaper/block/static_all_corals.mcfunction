## Alter blocks with specific static properties that match the outlined criteria.

# Corals -> Dead Corals
$execute if block ~ ~ ~ brain_coral run return run function elemental_tools:earthshaper/invoke_alter {set_block:"dead_brain_coral[waterlogged=$(waterlogged)]",sound:"$(sound)"}
$execute if block ~ ~ ~ brain_coral_fan run return run function elemental_tools:earthshaper/invoke_alter {set_block:"dead_brain_coral_fan[waterlogged=$(waterlogged)]",sound:"$(sound)"}
$execute if block ~ ~ ~ bubble_coral run return run function elemental_tools:earthshaper/invoke_alter {set_block:"dead_bubble_coral[waterlogged=$(waterlogged)]",sound:"$(sound)"}
$execute if block ~ ~ ~ bubble_coral_fan run return run function elemental_tools:earthshaper/invoke_alter {set_block:"dead_bubble_coral_fan[waterlogged=$(waterlogged)]",sound:"$(sound)"}
$execute if block ~ ~ ~ fire_coral run return run function elemental_tools:earthshaper/invoke_alter {set_block:"dead_fire_coral[waterlogged=$(waterlogged)]",sound:"$(sound)"}
$execute if block ~ ~ ~ fire_coral_fan run return run function elemental_tools:earthshaper/invoke_alter {set_block:"dead_fire_coral_fan[waterlogged=$(waterlogged)]",sound:"$(sound)"}
$execute if block ~ ~ ~ horn_coral run return run function elemental_tools:earthshaper/invoke_alter {set_block:"dead_horn_coral[waterlogged=$(waterlogged)]",sound:"$(sound)"}
$execute if block ~ ~ ~ horn_coral_fan run return run function elemental_tools:earthshaper/invoke_alter {set_block:"dead_horn_coral_fan[waterlogged=$(waterlogged)]",sound:"$(sound)"}
$execute if block ~ ~ ~ tube_coral run return run function elemental_tools:earthshaper/invoke_alter {set_block:"dead_tube_coral[waterlogged=$(waterlogged)]",sound:"$(sound)"}
$execute if block ~ ~ ~ tube_coral_fan run return run function elemental_tools:earthshaper/invoke_alter {set_block:"dead_tube_coral_fan[waterlogged=$(waterlogged)]",sound:"$(sound)"}

# Dead Corals -> Corals
$execute if block ~ ~ ~ dead_brain_coral run return run function elemental_tools:earthshaper/invoke_alter {set_block:"brain_coral[waterlogged=$(waterlogged)]",sound:"$(sound)"}
$execute if block ~ ~ ~ dead_brain_coral_fan run return run function elemental_tools:earthshaper/invoke_alter {set_block:"brain_coral_fan[waterlogged=$(waterlogged)]",sound:"$(sound)"}
$execute if block ~ ~ ~ dead_bubble_coral run return run function elemental_tools:earthshaper/invoke_alter {set_block:"bubble_coral[waterlogged=$(waterlogged)]",sound:"$(sound)"}
$execute if block ~ ~ ~ dead_bubble_coral_fan run return run function elemental_tools:earthshaper/invoke_alter {set_block:"bubble_coral_fan[waterlogged=$(waterlogged)]",sound:"$(sound)"}
$execute if block ~ ~ ~ dead_fire_coral run return run function elemental_tools:earthshaper/invoke_alter {set_block:"fire_coral[waterlogged=$(waterlogged)]",sound:"$(sound)"}
$execute if block ~ ~ ~ dead_fire_coral_fan run return run function elemental_tools:earthshaper/invoke_alter {set_block:"fire_coral_fan[waterlogged=$(waterlogged)]",sound:"$(sound)"}
$execute if block ~ ~ ~ dead_horn_coral run return run function elemental_tools:earthshaper/invoke_alter {set_block:"horn_coral[waterlogged=$(waterlogged)]",sound:"$(sound)"}
$execute if block ~ ~ ~ dead_horn_coral_fan run return run function elemental_tools:earthshaper/invoke_alter {set_block:"horn_coral_fan[waterlogged=$(waterlogged)]",sound:"$(sound)"}
$execute if block ~ ~ ~ dead_tube_coral run return run function elemental_tools:earthshaper/invoke_alter {set_block:"tube_coral[waterlogged=$(waterlogged)]",sound:"$(sound)"}
$execute if block ~ ~ ~ dead_tube_coral_fan run return run function elemental_tools:earthshaper/invoke_alter {set_block:"tube_coral_fan[waterlogged=$(waterlogged)]",sound:"$(sound)"}