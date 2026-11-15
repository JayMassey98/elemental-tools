## Unit test for elemental_tools:generic/block/rotation/ceiling_hanging_signs.mcfunction.

setblock ~1 ~1 ~1 minecraft:acacia_hanging_sign[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/rotation/ceiling_hanging_signs {attached:"true",rotation:"0",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:acacia_hanging_sign[attached=true,rotation=0,waterlogged=true] run test fail "generic/block/rotation/ceiling_hanging_signs did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass