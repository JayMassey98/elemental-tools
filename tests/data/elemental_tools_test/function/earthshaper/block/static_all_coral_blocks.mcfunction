## Unit test for elemental_tools:earthshaper/block/static_all_coral_blocks.mcfunction.

setblock ~1 ~1 ~1 minecraft:brain_coral_block
execute positioned ~1 ~1 ~1 run function elemental_tools:earthshaper/block/static_all_coral_blocks {sound:"true"}
execute if block ~1 ~1 ~1 minecraft:brain_coral_block run test fail "earthshaper/block/static_all_coral_blocks left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass