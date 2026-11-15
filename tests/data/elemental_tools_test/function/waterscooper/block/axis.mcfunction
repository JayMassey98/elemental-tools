## Unit test for elemental_tools:waterscooper/block/axis.mcfunction.

setblock ~1 ~1 ~1 minecraft:stone
execute positioned ~1 ~1 ~1 run function elemental_tools:waterscooper/block/axis {axis:"x",waterlogged_next:"true"}
execute if block ~1 ~1 ~1 minecraft:stone run test fail "waterscooper/block/axis left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass