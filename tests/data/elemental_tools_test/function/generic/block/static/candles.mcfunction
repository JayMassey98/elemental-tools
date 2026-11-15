## Unit test for elemental_tools:generic/block/static/candles.mcfunction.

setblock ~1 ~1 ~1 minecraft:black_candle[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/static/candles {candles:"true",lit:"true",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:black_candle[candles=true,lit=true,waterlogged=true] run test fail "generic/block/static/candles did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass