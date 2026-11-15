## Unit test for elemental_tools:waterscooper/block/connection.mcfunction.

setblock ~1 ~1 ~1 minecraft:resin_clump[down=false,up=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:waterscooper/block/connection {east:"true",north:"true",south:"true",waterlogged_next:"true",west:"true"}
execute unless block ~1 ~1 ~1 minecraft:black_stained_glass_pane[east=true,north=true,south=true,waterlogged=true,west=true] run test fail "waterscooper/block/connection did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass