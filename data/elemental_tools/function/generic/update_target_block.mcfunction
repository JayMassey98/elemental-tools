## Update the target block with a matching method, then perform the resulting actions.

# Invoke Block State Setup
$function elemental_tools:generic/invoke_block_state_setup {tool:"$(tool)"}

# Invoke Effects
$function elemental_tools:$(tool)/invoke_effects

# Set Durability Chance
function elemental_tools:generic/set_durability_chance
scoreboard players reset @s elemental_tools_durability_chance_maximum