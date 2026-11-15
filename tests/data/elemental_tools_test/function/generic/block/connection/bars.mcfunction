## Unit test for elemental_tools:generic/block/connection/bars.mcfunction.

setblock ~1 ~1 ~1 minecraft:copper_bars[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/connection/bars {east:"true",north:"true",south:"true",waterlogged:"true",west:"true"}
execute unless block ~1 ~1 ~1 minecraft:copper_bars[east=true,north=true,south=true,waterlogged=true,west=true] run test fail "generic/block/connection/bars did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass