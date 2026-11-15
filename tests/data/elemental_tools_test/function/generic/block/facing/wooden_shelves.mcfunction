## Unit test for elemental_tools:generic/block/facing/wooden_shelves.mcfunction.

setblock ~1 ~1 ~1 minecraft:acacia_shelf[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/facing/wooden_shelves {facing:"north",powered:"true",side_chain:"true",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:acacia_shelf[facing=north,powered=true,side_chain=true,waterlogged=true] run test fail "generic/block/facing/wooden_shelves did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass