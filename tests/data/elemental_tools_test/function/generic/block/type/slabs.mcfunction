## Unit test for elemental_tools:generic/block/type/slabs.mcfunction.

setblock ~1 ~1 ~1 minecraft:acacia_slab[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/type/slabs {type:"bottom",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:acacia_slab[type=bottom,waterlogged=true] run test fail "generic/block/type/slabs did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass