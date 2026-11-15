## Unit test for elemental_tools:earthshaper/set_block_state.mcfunction.

function elemental_tools_test:harness/spawn_holder

# Dirt -> Coarse Dirt -> Rooted Dirt -> Dirt
setblock ~ ~ ~ minecraft:dirt
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:earthshaper/set_block_state {waterlogged:"null"}
function elemental_tools_test:assert/block {block:"minecraft:coarse_dirt"}
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:earthshaper/set_block_state {waterlogged:"null"}
function elemental_tools_test:assert/block {block:"minecraft:rooted_dirt"}
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:earthshaper/set_block_state {waterlogged:"null"}
function elemental_tools_test:assert/block {block:"minecraft:dirt"}
