## Unit test for elemental_tools:windspanner/set_block_state.mcfunction.

setblock ~1 ~1 ~1 minecraft:oak_log[axis=x,waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:windspanner/set_block_state {waterlogged:"true"}
execute if block ~1 ~1 ~1 minecraft:oak_log[axis=x,waterlogged=false] run test fail "windspanner/set_block_state left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass