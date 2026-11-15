## Unit test for elemental_tools:earthshaper/block/static_copper_chiseled_and_cut.mcfunction.

setblock ~1 ~1 ~1 minecraft:chiseled_copper
execute positioned ~1 ~1 ~1 run function elemental_tools:earthshaper/block/static_copper_chiseled_and_cut {sound:"true"}
execute if block ~1 ~1 ~1 minecraft:chiseled_copper run test fail "earthshaper/block/static_copper_chiseled_and_cut left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass