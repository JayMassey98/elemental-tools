## Unit test for elemental_tools:windspanner/block/type.mcfunction.

setblock ~1 ~1 ~1 minecraft:weathered_cut_copper_slab[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:windspanner/block/type {states:"4",type_next:"bottom",waterlogged:"true"}
execute if block ~1 ~1 ~1 minecraft:weathered_cut_copper_slab[waterlogged=false] run test fail "windspanner/block/type left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass