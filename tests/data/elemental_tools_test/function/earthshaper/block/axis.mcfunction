## Unit test for elemental_tools:earthshaper/block/axis.mcfunction.

setblock ~1 ~1 ~1 minecraft:bamboo_block
execute positioned ~1 ~1 ~1 run function elemental_tools:earthshaper/block/axis {axis:"x"}
execute if block ~1 ~1 ~1 minecraft:bamboo_block run test fail "earthshaper/block/axis left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass