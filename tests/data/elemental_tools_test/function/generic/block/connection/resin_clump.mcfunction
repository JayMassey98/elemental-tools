## Unit test for elemental_tools:generic/block/connection/resin_clump.mcfunction.

setblock ~1 ~1 ~1 minecraft:resin_clump[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/connection/resin_clump {down:"true",east:"true",north:"true",south:"true",up:"true",waterlogged:"true",west:"true"}
execute unless block ~1 ~1 ~1 minecraft:resin_clump[down=true,east=true,north=true,south=true,up=true,waterlogged=true,west=true] run test fail "generic/block/connection/resin_clump did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass