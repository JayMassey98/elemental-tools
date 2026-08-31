## Update the target block with a matching method, then perform the resulting actions.

# Set Block State
$function elemental_tools:$(tool)/set_block_state

# Invoke Effects
$function elemental_tools:$(tool)/invoke_effects

# Set Durability Chance
function elemental_tools:generic/set_durability_chance
scoreboard players reset @s elemental_tools_durability_chance_maximum