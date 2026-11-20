## Use a tool on the block at the test position, the way a player would. Call with {tool:"windspanner"}.
## Run positioned at the test position.

function armour:harness/spawn_holder
$execute as @e[tag=armour.holder,limit=1] at @s run function elemental_tools:generic/update_target_block {tool:"$(tool)"}
kill @e[type=minecraft:armor_stand,tag=armour.holder]