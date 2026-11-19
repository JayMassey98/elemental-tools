## Unit test for elemental_tools:windspanner/set_block_state.mcfunction.

function armour:harness/spawn_holder

# Axis: x -> y -> z -> x
setblock ~ ~ ~ minecraft:oak_log[axis=x]
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:windspanner/set_block_state {waterlogged:"null",waterlogged_next:"null"}
function armour:assert/block {block:"minecraft:oak_log[axis=y]"}
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:windspanner/set_block_state {waterlogged:"null",waterlogged_next:"null"}
function armour:assert/block {block:"minecraft:oak_log[axis=z]"}
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:windspanner/set_block_state {waterlogged:"null",waterlogged_next:"null"}
function armour:assert/block {block:"minecraft:oak_log[axis=x]"}

# Stairs rotate clockwise through all 8 orientations: north/bottom -> north/top -> east/bottom -> ...
setblock ~ ~ ~ minecraft:oak_stairs[facing=north,half=bottom,waterlogged=false]
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:windspanner/set_block_state {waterlogged:"false",waterlogged_next:"true"}
function armour:assert/block {block:"minecraft:oak_stairs[facing=north,half=top]"}
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:windspanner/set_block_state {waterlogged:"false",waterlogged_next:"true"}
function armour:assert/block {block:"minecraft:oak_stairs[facing=east,half=bottom]"}
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:windspanner/set_block_state {waterlogged:"false",waterlogged_next:"true"}
function armour:assert/block {block:"minecraft:oak_stairs[facing=east,half=top]"}
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:windspanner/set_block_state {waterlogged:"false",waterlogged_next:"true"}
function armour:assert/block {block:"minecraft:oak_stairs[facing=south,half=bottom]"}

# Standing sign rotation 0 -> 1, and 15 wraps back to 0
setblock ~ ~ ~ minecraft:oak_sign[rotation=0,waterlogged=false]
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:windspanner/set_block_state {waterlogged:"false",waterlogged_next:"true"}
function armour:assert/block {block:"minecraft:oak_sign[rotation=1]"}
setblock ~ ~ ~ minecraft:oak_sign[rotation=15,waterlogged=false]
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:windspanner/set_block_state {waterlogged:"false",waterlogged_next:"true"}
function armour:assert/block {block:"minecraft:oak_sign[rotation=0]"}
