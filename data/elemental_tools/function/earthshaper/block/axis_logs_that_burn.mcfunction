## Alter blocks with specific axis (X/Y/Z) properties that match the outlined criteria.

# X/Y/Z - Log -> Stripped Log -> Wood -> Stripped Wood -> ...
$execute run function elemental_tools:earthshaper/invoke_sound {sound:"$(sound)"}
$execute if block ~ ~ ~ $(log)_log run return run setblock ~ ~ ~ stripped_$(log)_log[axis=$(axis)]
$execute if block ~ ~ ~ stripped_$(log)_log run return run setblock ~ ~ ~ $(log)_wood[axis=$(axis)]
$execute if block ~ ~ ~ $(log)_wood run return run setblock ~ ~ ~ stripped_$(log)_wood[axis=$(axis)]
$execute if block ~ ~ ~ stripped_$(log)_wood run return run setblock ~ ~ ~ $(log)_log[axis=$(axis)]