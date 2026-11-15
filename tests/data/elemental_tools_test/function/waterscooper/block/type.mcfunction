## Unit test for elemental_tools:waterscooper/block/type.mcfunction.

setblock ~1 ~1 ~1 minecraft:weathered_cut_copper_slab
execute positioned ~1 ~1 ~1 run function elemental_tools:waterscooper/block/type {type:"bottom",waterlogged_next:"true"}
execute if block ~1 ~1 ~1 minecraft:weathered_cut_copper_slab run test fail "waterscooper/block/type left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass