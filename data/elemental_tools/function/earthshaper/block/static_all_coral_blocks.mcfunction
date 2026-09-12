## Alter blocks with specific static properties that match the outlined criteria.

# Coral Blocks -> Dead Coral Blocks
$execute if block ~ ~ ~ #minecraft:coral_blocks run function elemental_tools:earthshaper/invoke_sound {sound:"$(sound)"}
execute if block ~ ~ ~ brain_coral_block run return run setblock ~ ~ ~ dead_brain_coral_block
execute if block ~ ~ ~ bubble_coral_block run return run setblock ~ ~ ~ dead_bubble_coral_block
execute if block ~ ~ ~ fire_coral_block run return run setblock ~ ~ ~ dead_fire_coral_block
execute if block ~ ~ ~ horn_coral_block run return run setblock ~ ~ ~ dead_horn_coral_block
execute if block ~ ~ ~ tube_coral_block run return run setblock ~ ~ ~ dead_tube_coral_block

# Dead Coral Blocks -> Coral Blocks
$execute if block ~ ~ ~ #elemental_tools:dead_coral_blocks run function elemental_tools:earthshaper/invoke_sound {sound:"$(sound)"}
execute if block ~ ~ ~ dead_brain_coral_block run return run setblock ~ ~ ~ brain_coral_block
execute if block ~ ~ ~ dead_bubble_coral_block run return run setblock ~ ~ ~ bubble_coral_block
execute if block ~ ~ ~ dead_fire_coral_block run return run setblock ~ ~ ~ fire_coral_block
execute if block ~ ~ ~ dead_horn_coral_block run return run setblock ~ ~ ~ horn_coral_block
execute if block ~ ~ ~ dead_tube_coral_block run return run setblock ~ ~ ~ tube_coral_block