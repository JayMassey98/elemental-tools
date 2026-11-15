## Unit test for elemental_tools:generic/update_target_block.mcfunction.

# Full tool use on a block, as a player would trigger it (minus the raycast).

# Earthshaper: dirt -> coarse dirt
setblock ~ ~ ~ minecraft:dirt
function elemental_tools_test:harness/use_tool {tool:"earthshaper"}
function elemental_tools_test:assert/block {block:"minecraft:coarse_dirt"}

# Windspanner: standing sign rotation 0 -> 1
setblock ~ ~ ~ minecraft:oak_sign[rotation=0,waterlogged=false]
function elemental_tools_test:harness/use_tool {tool:"windspanner"}
function elemental_tools_test:assert/block {block:"minecraft:oak_sign[rotation=1,waterlogged=false]"}

# Windspanner: log axis x -> y
setblock ~ ~ ~ minecraft:oak_log[axis=x]
function elemental_tools_test:harness/use_tool {tool:"windspanner"}
function elemental_tools_test:assert/block {block:"minecraft:oak_log[axis=y]"}

# Waterscooper: slab waterlogged false -> true -> false
setblock ~ ~ ~ minecraft:oak_slab[type=bottom,waterlogged=false]
function elemental_tools_test:harness/use_tool {tool:"waterscooper"}
function elemental_tools_test:assert/block {block:"minecraft:oak_slab[type=bottom,waterlogged=true]"}
function elemental_tools_test:harness/use_tool {tool:"waterscooper"}
function elemental_tools_test:assert/block {block:"minecraft:oak_slab[type=bottom,waterlogged=false]"}
