## Unit test for elemental_tools:earthshaper/block/static.

setblock ~1 ~1 ~1 minecraft:azalea[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:earthshaper/block/static {waterlogged:"true"}
execute if block ~1 ~1 ~1 minecraft:azalea[waterlogged=false] run test fail "earthshaper/block/static left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass