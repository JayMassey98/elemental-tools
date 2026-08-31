## Update the cooldown of the elemental tools, then decrement the timer each tick until it expires, resetting the cooldown.

scoreboard players remove @s elemental_tools_cooldown 1
execute if score @s elemental_tools_cooldown matches 1.. run advancement revoke @s only elemental_tools:invoke_cooldown
execute unless score @s elemental_tools_cooldown matches 1.. run scoreboard players reset @s elemental_tools_cooldown