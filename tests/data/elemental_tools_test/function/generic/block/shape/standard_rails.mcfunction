## Unit test for elemental_tools:generic/block/shape/standard_rails.mcfunction.

setblock ~1 ~1 ~1 minecraft:rail[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/shape/standard_rails {shape:"north_south",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:rail[shape=north_south,waterlogged=true] run test fail "generic/block/shape/standard_rails did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass