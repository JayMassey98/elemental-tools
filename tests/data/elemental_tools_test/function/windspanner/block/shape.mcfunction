## Unit test for elemental_tools:windspanner/block/shape.mcfunction.

setblock ~1 ~1 ~1 minecraft:rail[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:windspanner/block/shape {shape_2_next:"north_south",shape_6_next:"north_south",states_standard:"4",states_utility:"4",waterlogged:"true"}
execute if block ~1 ~1 ~1 minecraft:rail[waterlogged=false] run test fail "windspanner/block/shape left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass