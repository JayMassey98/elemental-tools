## Alter blocks with specific static properties that match the outlined criteria.

# Chiseled Coppers -> Cut Coppers
$execute if block ~ ~ ~ chiseled_copper run return run function elemental_tools:earthshaper/invoke_alter {set_block:"cut_copper",sound:"$(sound)"}
$execute if block ~ ~ ~ exposed_chiseled_copper run return run function elemental_tools:earthshaper/invoke_alter {set_block:"exposed_cut_copper",sound:"$(sound)"}
$execute if block ~ ~ ~ oxidized_chiseled_copper run return run function elemental_tools:earthshaper/invoke_alter {set_block:"oxidized_cut_copper",sound:"$(sound)"}
$execute if block ~ ~ ~ waxed_chiseled_copper run return run function elemental_tools:earthshaper/invoke_alter {set_block:"waxed_cut_copper",sound:"$(sound)"}
$execute if block ~ ~ ~ waxed_exposed_chiseled_copper run return run function elemental_tools:earthshaper/invoke_alter {set_block:"waxed_exposed_cut_copper",sound:"$(sound)"}
$execute if block ~ ~ ~ waxed_oxidized_chiseled_copper run return run function elemental_tools:earthshaper/invoke_alter {set_block:"waxed_oxidized_cut_copper",sound:"$(sound)"}
$execute if block ~ ~ ~ waxed_weathered_chiseled_copper run return run function elemental_tools:earthshaper/invoke_alter {set_block:"waxed_weathered_cut_copper",sound:"$(sound)"}
$execute if block ~ ~ ~ weathered_chiseled_copper run return run function elemental_tools:earthshaper/invoke_alter {set_block:"weathered_cut_copper",sound:"$(sound)"}

# Cut Coppers -> Chiseled Coppers
$execute if block ~ ~ ~ cut_copper run return run function elemental_tools:earthshaper/invoke_alter {set_block:"chiseled_copper",sound:"$(sound)"}
$execute if block ~ ~ ~ exposed_cut_copper run return run function elemental_tools:earthshaper/invoke_alter {set_block:"exposed_chiseled_copper",sound:"$(sound)"}
$execute if block ~ ~ ~ oxidized_cut_copper run return run function elemental_tools:earthshaper/invoke_alter {set_block:"oxidized_chiseled_copper",sound:"$(sound)"}
$execute if block ~ ~ ~ waxed_cut_copper run return run function elemental_tools:earthshaper/invoke_alter {set_block:"waxed_chiseled_copper",sound:"$(sound)"}
$execute if block ~ ~ ~ waxed_exposed_cut_copper run return run function elemental_tools:earthshaper/invoke_alter {set_block:"waxed_exposed_chiseled_copper",sound:"$(sound)"}
$execute if block ~ ~ ~ waxed_oxidized_cut_copper run return run function elemental_tools:earthshaper/invoke_alter {set_block:"waxed_oxidized_chiseled_copper",sound:"$(sound)"}
$execute if block ~ ~ ~ waxed_weathered_cut_copper run return run function elemental_tools:earthshaper/invoke_alter {set_block:"waxed_weathered_chiseled_copper",sound:"$(sound)"}
$execute if block ~ ~ ~ weathered_cut_copper run return run function elemental_tools:earthshaper/invoke_alter {set_block:"weathered_chiseled_copper",sound:"$(sound)"}