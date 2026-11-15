## Unit test for elemental_tools:generic/block/facing/copper_chests.mcfunction.

setblock ~1 ~1 ~1 minecraft:copper_chest[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/facing/copper_chests {facing:"north",type:"bottom",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:copper_chest[facing=north,type=bottom,waterlogged=true] run test fail "generic/block/facing/copper_chests did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass