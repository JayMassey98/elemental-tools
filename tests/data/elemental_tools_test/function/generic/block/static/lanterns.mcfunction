## Unit test for elemental_tools:generic/block/static/lanterns.mcfunction.

setblock ~1 ~1 ~1 minecraft:copper_lantern[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/static/lanterns {hanging:"true",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:copper_lantern[hanging=true,waterlogged=true] run test fail "generic/block/static/lanterns did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass