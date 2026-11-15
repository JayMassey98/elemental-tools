## Unit test for elemental_tools:generic/block/facing/lightning_rods.mcfunction.

setblock ~1 ~1 ~1 minecraft:exposed_lightning_rod[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/facing/lightning_rods {facing:"north",powered:"true",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:exposed_lightning_rod[facing=north,powered=true,waterlogged=true] run test fail "generic/block/facing/lightning_rods did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass