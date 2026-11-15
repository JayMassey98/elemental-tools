## Unit test for elemental_tools:generic/block/rotation/standing_signs.mcfunction.

setblock ~1 ~1 ~1 minecraft:acacia_sign[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/rotation/standing_signs {rotation:"0",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:acacia_sign[rotation=0,waterlogged=true] run test fail "generic/block/rotation/standing_signs did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass