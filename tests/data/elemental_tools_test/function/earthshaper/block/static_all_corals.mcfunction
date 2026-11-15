## Unit test for elemental_tools:earthshaper/block/static_all_corals.mcfunction.

setblock ~1 ~1 ~1 minecraft:brain_coral[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:earthshaper/block/static_all_corals {sound:"true",waterlogged:"true"}
execute if block ~1 ~1 ~1 minecraft:brain_coral[waterlogged=false] run test fail "earthshaper/block/static_all_corals left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass