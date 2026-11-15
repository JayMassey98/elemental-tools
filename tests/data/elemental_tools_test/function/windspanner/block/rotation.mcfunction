## Unit test for elemental_tools:windspanner/block/rotation.mcfunction.

setblock ~1 ~1 ~1 minecraft:oak_hanging_sign[attached=false,waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:windspanner/block/rotation {rotation_next:"0",states:"4",waterlogged:"true"}
execute if block ~1 ~1 ~1 minecraft:oak_hanging_sign[attached=false,waterlogged=false] run test fail "windspanner/block/rotation left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass