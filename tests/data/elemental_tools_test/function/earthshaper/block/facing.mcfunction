## Unit test for elemental_tools:earthshaper/block/facing.mcfunction.

setblock ~1 ~1 ~1 minecraft:bamboo_stairs[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:earthshaper/block/facing {facing:"north",waterlogged:"true"}
execute if block ~1 ~1 ~1 minecraft:bamboo_stairs[waterlogged=false] run test fail "earthshaper/block/facing left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass