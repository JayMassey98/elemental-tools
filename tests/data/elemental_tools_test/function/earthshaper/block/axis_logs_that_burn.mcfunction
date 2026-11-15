## Unit test for elemental_tools:earthshaper/block/axis_logs_that_burn.mcfunction.

setblock ~1 ~1 ~1 minecraft:stripped_
execute positioned ~1 ~1 ~1 run function elemental_tools:earthshaper/block/axis_logs_that_burn {axis:"x",log:"true",sound:"true"}
execute if block ~1 ~1 ~1 minecraft:stripped_ run test fail "earthshaper/block/axis_logs_that_burn left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass