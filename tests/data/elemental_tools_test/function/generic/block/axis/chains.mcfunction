## Unit test for elemental_tools:generic/block/axis/chains.mcfunction.

setblock ~1 ~1 ~1 minecraft:copper_chain[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/axis/chains {axis:"x",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:copper_chain[axis=x,waterlogged=true] run test fail "generic/block/axis/chains did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass