## Unit test for elemental_tools:generic/block/facing/trapdoors.mcfunction.

setblock ~1 ~1 ~1 minecraft:acacia_trapdoor[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/facing/trapdoors {facing:"north",half:"bottom",open:"true",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:acacia_trapdoor[facing=north,half=bottom,open=true,waterlogged=true] run test fail "generic/block/facing/trapdoors did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass