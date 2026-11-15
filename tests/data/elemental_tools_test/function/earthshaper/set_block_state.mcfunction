## Unit test for elemental_tools:earthshaper/set_block_state.mcfunction.

setblock ~1 ~1 ~1 minecraft:stone_bricks[axis=x,waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:earthshaper/set_block_state {waterlogged:"true"}
execute if block ~1 ~1 ~1 minecraft:stone_bricks[axis=x,waterlogged=false] run test fail "earthshaper/set_block_state left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass