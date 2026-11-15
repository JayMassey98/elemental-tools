## Unit test for elemental_tools:generic/block/connection/sculk_vein.mcfunction.

setblock ~1 ~1 ~1 minecraft:sculk_vein[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/connection/sculk_vein {down:"true",east:"true",north:"true",south:"true",up:"true",waterlogged:"true",west:"true"}
execute unless block ~1 ~1 ~1 minecraft:sculk_vein[down=true,east=true,north=true,south=true,up=true,waterlogged=true,west=true] run test fail "generic/block/connection/sculk_vein did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass