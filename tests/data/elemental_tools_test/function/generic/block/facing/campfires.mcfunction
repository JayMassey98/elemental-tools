## Unit test for elemental_tools:generic/block/facing/campfires.mcfunction.

setblock ~1 ~1 ~1 minecraft:campfire[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/facing/campfires {facing:"north",lit:"true",signal_fire:"true",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:campfire[facing=north,lit=true,signal_fire=true,waterlogged=true] run test fail "generic/block/facing/campfires did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass