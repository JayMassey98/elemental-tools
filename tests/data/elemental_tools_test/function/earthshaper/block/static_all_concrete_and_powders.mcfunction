## Unit test for elemental_tools:earthshaper/block/static_all_concrete_and_powders.mcfunction.

setblock ~1 ~1 ~1 minecraft:black_concrete
execute positioned ~1 ~1 ~1 run function elemental_tools:earthshaper/block/static_all_concrete_and_powders {sound:"true"}
execute if block ~1 ~1 ~1 minecraft:black_concrete run test fail "earthshaper/block/static_all_concrete_and_powders left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass