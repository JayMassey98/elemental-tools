## Only one use of an elemental tool is triggered when holding down the Use Item/Place Block key.

scoreboard players remove @s elemental_tools_cooldown 1
# execute if score @s elemental_tools_cooldown matches 1.. run advancement revoke @s only elemental_tools:use_waterscooper
execute if score @s elemental_tools_cooldown matches 1.. run advancement revoke @s only elemental_tools:use_windspanner
execute if score @s elemental_tools_cooldown matches 1.. run advancement revoke @s only elemental_tools:cooldown
execute unless score @s elemental_tools_cooldown matches 1.. run scoreboard players reset @s elemental_tools_cooldown