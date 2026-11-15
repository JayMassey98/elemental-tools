## Unit test for elemental_tools:waterscooper/block/static.mcfunction.

setblock ~1 ~1 ~1 minecraft:brain_coral
execute positioned ~1 ~1 ~1 run function elemental_tools:waterscooper/block/static {waterlogged_next:"true"}
execute unless block ~1 ~1 ~1 minecraft:brain_coral[waterlogged=true] run test fail "waterscooper/block/static did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass