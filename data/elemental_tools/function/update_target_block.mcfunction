## Update the target block with a matching method, then perform the resulting effects.

# Set Block Position
$function elemental_tools:$(tool)/set_block_position

# Perform Block Effects
$function elemental_tools:$(tool)/effects

# Roll Durability Chance
function elemental_tools:roll_durability_chance
scoreboard players reset @s elemental_tools_durability_chance_maximum