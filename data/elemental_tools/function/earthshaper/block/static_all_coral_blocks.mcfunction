## Alter blocks with specific static properties that match the outlined criteria.

# Coral Blocks -> Dead Coral Blocks
$execute if block ~ ~ ~ brain_coral_block run return run function elemental_tools:earthshaper/invoke_alter {set_block:"dead_brain_coral_block",sound:"$(sound)"}
$execute if block ~ ~ ~ bubble_coral_block run return run function elemental_tools:earthshaper/invoke_alter {set_block:"dead_bubble_coral_block",sound:"$(sound)"}
$execute if block ~ ~ ~ fire_coral_block run return run function elemental_tools:earthshaper/invoke_alter {set_block:"dead_fire_coral_block",sound:"$(sound)"}
$execute if block ~ ~ ~ horn_coral_block run return run function elemental_tools:earthshaper/invoke_alter {set_block:"dead_horn_coral_block",sound:"$(sound)"}
$execute if block ~ ~ ~ tube_coral_block run return run function elemental_tools:earthshaper/invoke_alter {set_block:"dead_tube_coral_block",sound:"$(sound)"}

# Dead Coral Blocks -> Coral Blocks
$execute if block ~ ~ ~ dead_brain_coral_block run return run function elemental_tools:earthshaper/invoke_alter {set_block:"brain_coral_block",sound:"$(sound)"}
$execute if block ~ ~ ~ dead_bubble_coral_block run return run function elemental_tools:earthshaper/invoke_alter {set_block:"bubble_coral_block",sound:"$(sound)"}
$execute if block ~ ~ ~ dead_fire_coral_block run return run function elemental_tools:earthshaper/invoke_alter {set_block:"fire_coral_block",sound:"$(sound)"}
$execute if block ~ ~ ~ dead_horn_coral_block run return run function elemental_tools:earthshaper/invoke_alter {set_block:"horn_coral_block",sound:"$(sound)"}
$execute if block ~ ~ ~ dead_tube_coral_block run return run function elemental_tools:earthshaper/invoke_alter {set_block:"tube_coral_block",sound:"$(sound)"}