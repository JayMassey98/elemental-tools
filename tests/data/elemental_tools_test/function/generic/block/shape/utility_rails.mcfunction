## Unit test for elemental_tools:generic/block/shape/utility_rails.mcfunction.

setblock ~1 ~1 ~1 minecraft:activator_rail[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/shape/utility_rails {shape:"north_south",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:activator_rail[shape=north_south,waterlogged=true] run test fail "generic/block/shape/utility_rails did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass