## Invoke the earthshaper function to attempt altering a target block.

function elemental_tools:generic/invoke_tool {id:"minecraft:blaze_rod", tool:"earthshaper"}

# Remaining Cleanup
scoreboard players reset @s elemental_tools_durability_chance
scoreboard players reset @s elemental_tools_item_damage
scoreboard players reset @s elemental_tools_item_hand