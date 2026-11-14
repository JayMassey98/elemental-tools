## Alter blocks with specific axis (X/Y/Z) properties that match the outlined criteria.

# X/Y/Z - Stem -> Stripped Stem -> Hyphae -> Stripped Hyphae -> ...
$execute if block ~ ~ ~ $(stem)_stem run return run function elemental_tools:earthshaper/invoke_alter {set_block:"stripped_$(stem)_stem[axis=$(axis)]",sound:"$(sound)"}
$execute if block ~ ~ ~ stripped_$(stem)_stem run return run function elemental_tools:earthshaper/invoke_alter {set_block:"$(stem)_hyphae[axis=$(axis)]",sound:"$(sound)"}
$execute if block ~ ~ ~ $(stem)_hyphae run return run function elemental_tools:earthshaper/invoke_alter {set_block:"stripped_$(stem)_hyphae[axis=$(axis)]",sound:"$(sound)"}
$execute if block ~ ~ ~ stripped_$(stem)_hyphae run return run function elemental_tools:earthshaper/invoke_alter {set_block:"$(stem)_stem[axis=$(axis)]",sound:"$(sound)"}