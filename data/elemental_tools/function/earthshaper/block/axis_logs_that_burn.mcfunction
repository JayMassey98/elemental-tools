## Alter blocks with specific axis (X/Y/Z) properties that match the outlined criteria.

# X/Y/Z - Log -> Stripped Log -> Wood -> Stripped Wood -> ...
$execute if block ~ ~ ~ $(log)_log run return run function elemental_tools:earthshaper/invoke_alter {set_block:"stripped_$(log)_log[axis=$(axis)]",sound:"$(sound)"}
$execute if block ~ ~ ~ stripped_$(log)_log run return run function elemental_tools:earthshaper/invoke_alter {set_block:"$(log)_wood[axis=$(axis)]",sound:"$(sound)"}
$execute if block ~ ~ ~ $(log)_wood run return run function elemental_tools:earthshaper/invoke_alter {set_block:"stripped_$(log)_wood[axis=$(axis)]",sound:"$(sound)"}
$execute if block ~ ~ ~ stripped_$(log)_wood run return run function elemental_tools:earthshaper/invoke_alter {set_block:"$(log)_log[axis=$(axis)]",sound:"$(sound)"}