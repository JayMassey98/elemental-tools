## Unit test for elemental_tools:windspanner/block/axis.mcfunction.

setblock ~1 ~1 ~1 minecraft:stone[waterlogged=$(waterlogged)]
execute positioned ~1 ~1 ~1 run function elemental_tools:windspanner/block/axis {axis_next:"x",states:"4",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:creaking_heart[axis=x,creaking_heart_state=awake,natural=false] run test fail "windspanner/block/axis did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass