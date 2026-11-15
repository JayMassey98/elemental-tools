## Unit test for elemental_tools:generic/block/connection/fences.mcfunction.

setblock ~1 ~1 ~1 minecraft:acacia_fence[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/connection/fences {east:"true",north:"true",south:"true",waterlogged:"true",west:"true"}
execute unless block ~1 ~1 ~1 minecraft:acacia_fence[east=true,north=true,south=true,waterlogged=true,west=true] run test fail "generic/block/connection/fences did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass