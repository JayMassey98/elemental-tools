## Unit test for elemental_tools:waterscooper/block/shape.mcfunction.

setblock ~1 ~1 ~1 minecraft:rail
execute positioned ~1 ~1 ~1 run function elemental_tools:waterscooper/block/shape {shape:"north_south",waterlogged_next:"true"}
execute if block ~1 ~1 ~1 minecraft:rail run test fail "waterscooper/block/shape left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass