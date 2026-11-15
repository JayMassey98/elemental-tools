## Unit test for elemental_tools:earthshaper/block/connection_walls.mcfunction.

setblock ~1 ~1 ~1 minecraft:cinnabar_brick_wall[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:earthshaper/block/connection_walls {east:"true",north:"true",south:"true",up:"true",waterlogged:"true",west:"true"}
execute if block ~1 ~1 ~1 minecraft:cinnabar_brick_wall[waterlogged=false] run test fail "earthshaper/block/connection_walls left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass