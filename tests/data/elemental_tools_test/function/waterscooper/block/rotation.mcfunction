## Unit test for elemental_tools:waterscooper/block/rotation.mcfunction.

setblock ~1 ~1 ~1 minecraft:oak_hanging_sign[attached=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:waterscooper/block/rotation {rotation:"0",waterlogged_next:"true"}
execute if block ~1 ~1 ~1 minecraft:oak_hanging_sign[attached=false] run test fail "waterscooper/block/rotation left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass