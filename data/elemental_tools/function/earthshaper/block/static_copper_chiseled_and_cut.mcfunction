## Alter blocks with specific static properties that match the outlined criteria.

# Chiseled Coppers -> Cut Coppers
execute if block ~ ~ ~ chiseled_copper run return run setblock ~ ~ ~ cut_copper
execute if block ~ ~ ~ exposed_chiseled_copper run return run setblock ~ ~ ~ exposed_cut_copper
execute if block ~ ~ ~ oxidized_chiseled_copper run return run setblock ~ ~ ~ oxidized_cut_copper
execute if block ~ ~ ~ waxed_chiseled_copper run return run setblock ~ ~ ~ waxed_cut_copper
execute if block ~ ~ ~ waxed_exposed_chiseled_copper run return run setblock ~ ~ ~ waxed_exposed_cut_copper
execute if block ~ ~ ~ waxed_oxidized_chiseled_copper run return run setblock ~ ~ ~ waxed_oxidized_cut_copper
execute if block ~ ~ ~ waxed_weathered_chiseled_copper run return run setblock ~ ~ ~ waxed_weathered_cut_copper
execute if block ~ ~ ~ weathered_chiseled_copper run return run setblock ~ ~ ~ weathered_cut_copper

# Cut Coppers -> Chiseled Coppers
execute if block ~ ~ ~ cut_copper run return run setblock ~ ~ ~ chiseled_copper
execute if block ~ ~ ~ exposed_cut_copper run return run setblock ~ ~ ~ exposed_chiseled_copper
execute if block ~ ~ ~ oxidized_cut_copper run return run setblock ~ ~ ~ oxidized_chiseled_copper
execute if block ~ ~ ~ waxed_cut_copper run return run setblock ~ ~ ~ waxed_chiseled_copper
execute if block ~ ~ ~ waxed_exposed_cut_copper run return run setblock ~ ~ ~ waxed_exposed_chiseled_copper
execute if block ~ ~ ~ waxed_oxidized_cut_copper run return run setblock ~ ~ ~ waxed_oxidized_chiseled_copper
execute if block ~ ~ ~ waxed_weathered_cut_copper run return run setblock ~ ~ ~ waxed_weathered_chiseled_copper
execute if block ~ ~ ~ weathered_cut_copper run return run setblock ~ ~ ~ weathered_chiseled_copper