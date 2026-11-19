## Unit test for elemental_tools:waterscooper/set_block_state.mcfunction.

function armour:harness/spawn_holder

# Slab: waterlogged false -> true -> false (the caller supplies the current and next value)
setblock ~ ~ ~ minecraft:oak_slab[type=bottom,waterlogged=false]
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:waterscooper/set_block_state {waterlogged:"false",waterlogged_next:"true"}
function armour:assert/block {block:"minecraft:oak_slab[type=bottom,waterlogged=true]"}
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:waterscooper/set_block_state {waterlogged:"true",waterlogged_next:"false"}
function armour:assert/block {block:"minecraft:oak_slab[type=bottom,waterlogged=false]"}

# Stairs keep their facing and half
setblock ~ ~ ~ minecraft:oak_stairs[facing=west,half=top,waterlogged=false]
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:waterscooper/set_block_state {waterlogged:"false",waterlogged_next:"true"}
function armour:assert/block {block:"minecraft:oak_stairs[facing=west,half=top,waterlogged=true]"}
