## Unit test for elemental_tools:waterscooper/set_block_state.mcfunction.

setblock ~1 ~1 ~1 minecraft:oak_stairs[axis=x,waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:waterscooper/set_block_state {waterlogged:"true",waterlogged_next:"true"}
execute unless block ~1 ~1 ~1 minecraft:obsidian run test fail "waterscooper/set_block_state did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass