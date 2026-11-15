## Unit test for elemental_tools:generic/block/facing/copper_golem_statues.mcfunction.

setblock ~1 ~1 ~1 minecraft:copper_golem_statue[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/facing/copper_golem_statues {copper_golem_pose:"true",facing:"north",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:copper_golem_statue[copper_golem_pose=true,facing=north,waterlogged=true] run test fail "generic/block/facing/copper_golem_statues did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass