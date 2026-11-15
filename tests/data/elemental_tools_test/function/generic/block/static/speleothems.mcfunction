## Unit test for elemental_tools:generic/block/static/speleothems.mcfunction.

setblock ~1 ~1 ~1 minecraft:pointed_dripstone[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/static/speleothems {thickness:"true",vertical_direction:"true",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:pointed_dripstone[thickness=true,vertical_direction=true,waterlogged=true] run test fail "generic/block/static/speleothems did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass