## Unit test for elemental_tools:generic/invoke_block_state_setup.mcfunction.

setblock ~1 ~1 ~1 minecraft:oak_stairs[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/invoke_block_state_setup {tool:"true"}
execute if block ~1 ~1 ~1 minecraft:oak_stairs[waterlogged=false] run test fail "generic/invoke_block_state_setup left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass