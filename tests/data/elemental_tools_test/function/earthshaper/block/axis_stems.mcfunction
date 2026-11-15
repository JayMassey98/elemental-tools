## Unit test for elemental_tools:earthshaper/block/axis_stems.mcfunction.

setblock ~1 ~1 ~1 minecraft:stripped_
execute positioned ~1 ~1 ~1 run function elemental_tools:earthshaper/block/axis_stems {axis:"x",sound:"true",stem:"true"}
execute if block ~1 ~1 ~1 minecraft:stripped_ run test fail "earthshaper/block/axis_stems left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass