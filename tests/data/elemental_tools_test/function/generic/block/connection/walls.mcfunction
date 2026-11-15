## Unit test for elemental_tools:generic/block/connection/walls.mcfunction.

setblock ~1 ~1 ~1 minecraft:andesite_wall[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/connection/walls {east:"true",north:"true",south:"true",up:"true",waterlogged:"true",west:"true"}
execute unless block ~1 ~1 ~1 minecraft:andesite_wall[east=true,north=true,south=true,up=true,waterlogged=true,west=true] run test fail "generic/block/connection/walls did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass