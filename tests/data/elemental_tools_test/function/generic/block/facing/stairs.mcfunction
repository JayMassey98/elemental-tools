## Unit test for elemental_tools:generic/block/facing/stairs.mcfunction.

setblock ~1 ~1 ~1 minecraft:acacia_stairs[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/facing/stairs {facing:"north",half:"bottom",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:acacia_stairs[facing=north,half=bottom,waterlogged=true] run test fail "generic/block/facing/stairs did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass