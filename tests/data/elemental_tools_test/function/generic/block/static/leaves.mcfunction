## Unit test for elemental_tools:generic/block/static/leaves.mcfunction.

setblock ~1 ~1 ~1 minecraft:acacia_leaves[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/static/leaves {distance:"true",persistent:"true",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:acacia_leaves[distance=true,persistent=true,waterlogged=true] run test fail "generic/block/static/leaves did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass