## Unit test for elemental_tools:earthshaper/block/type.mcfunction.

setblock ~1 ~1 ~1 minecraft:bamboo_slab[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:earthshaper/block/type {type:"bottom",waterlogged:"true"}
execute if block ~1 ~1 ~1 minecraft:bamboo_slab[waterlogged=false] run test fail "earthshaper/block/type left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass