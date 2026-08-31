## Invoke the Windspanner function to attempt rotating a target block.

function elemental_tools:generic/invoke_tool {id:"minecraft:breeze_rod", tool:"windspanner"}

# Remaining Cleanup
scoreboard players reset @s elemental_tools_durability_chance
scoreboard players reset @s elemental_tools_item_damage
scoreboard players reset @s elemental_tools_item_hand