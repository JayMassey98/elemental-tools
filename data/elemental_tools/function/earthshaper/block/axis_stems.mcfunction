## Alter blocks with specific axis (X/Y/Z) properties that match the outlined criteria.

# X/Y/Z - Stem -> Stripped Stem -> Hyphae -> Stripped Hyphae -> ...
$execute run function elemental_tools:earthshaper/invoke_sound {sound:"$(sound)"}
$execute if block ~ ~ ~ $(stem)_stem run return run setblock ~ ~ ~ stripped_$(stem)_stem[axis=$(axis)]
$execute if block ~ ~ ~ stripped_$(stem)_stem run return run setblock ~ ~ ~ $(stem)_hyphae[axis=$(axis)]
$execute if block ~ ~ ~ $(stem)_hyphae run return run setblock ~ ~ ~ stripped_$(stem)_hyphae[axis=$(axis)]
$execute if block ~ ~ ~ stripped_$(stem)_hyphae run return run setblock ~ ~ ~ $(stem)_stem[axis=$(axis)]