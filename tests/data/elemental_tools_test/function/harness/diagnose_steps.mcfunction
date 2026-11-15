## TEMPORARY. Run positioned at the test position.

function elemental_tools_test:harness/spawn_holder
setblock ~ ~ ~ minecraft:dirt

# D0: where is the holder, and is there exactly one?
execute store result storage et_test:diag holders int 1 if entity @e[tag=et_test_holder]
data modify storage et_test:diag pos set from entity @e[tag=et_test_holder,limit=1] Pos
function elemental_tools_test:harness/diag_pos with storage et_test:diag

# D1: does the holder stand at the block? D2: does the tag match the block there?
execute as @e[tag=et_test_holder,limit=1] at @s if block ~ ~ ~ minecraft:dirt run function elemental_tools_test:harness/diag {text:"D1 yes, the holder is at the dirt block"}
execute as @e[tag=et_test_holder,limit=1] at @s unless block ~ ~ ~ minecraft:dirt run function elemental_tools_test:harness/diag {text:"D1 NO, the holder is not at the dirt block"}
execute as @e[tag=et_test_holder,limit=1] at @s if block ~ ~ ~ #elemental_tools:triggers_earthshaper run function elemental_tools_test:harness/diag {text:"D2 yes, the earthshaper tag matches dirt"}
execute as @e[tag=et_test_holder,limit=1] at @s unless block ~ ~ ~ #elemental_tools:triggers_earthshaper run function elemental_tools_test:harness/diag {text:"D2 NO, the earthshaper tag does not match dirt"}

# D3: a plain setblock as the holder
execute as @e[tag=et_test_holder,limit=1] at @s run setblock ~ ~ ~ minecraft:coarse_dirt
function elemental_tools_test:harness/diag_block {id:"D3 plain setblock",block:"minecraft:coarse_dirt"}
setblock ~ ~ ~ minecraft:dirt

# D4: the lowest layer of the tool code (changes the block)
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:earthshaper/invoke_alter {set_block:"coarse_dirt",sound:"gravel"}
function elemental_tools_test:harness/diag_block {id:"D4 invoke_alter",block:"minecraft:coarse_dirt"}
setblock ~ ~ ~ minecraft:dirt

# D5: the block list for static blocks
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:earthshaper/block/static {waterlogged:"null"}
function elemental_tools_test:harness/diag_block {id:"D5 block/static",block:"minecraft:coarse_dirt"}
setblock ~ ~ ~ minecraft:dirt

# D6: choosing the right block list
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:earthshaper/set_block_state {waterlogged:"null"}
function elemental_tools_test:harness/diag_block {id:"D6 set_block_state",block:"minecraft:coarse_dirt"}
setblock ~ ~ ~ minecraft:dirt

# D7: the whole tool use
function elemental_tools_test:harness/use_tool {tool:"earthshaper"}
function elemental_tools_test:harness/diag_block {id:"D7 update_target_block",block:"minecraft:coarse_dirt"}