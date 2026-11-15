## Unit test for elemental_tools:generic/block/facing/calibrated_sculk_sensor.mcfunction.

setblock ~1 ~1 ~1 minecraft:calibrated_sculk_sensor[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/facing/calibrated_sculk_sensor {facing:"north",power:"true",sculk_sensor_phase:"true",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:calibrated_sculk_sensor[facing=north,power=true,sculk_sensor_phase=true,waterlogged=true] run test fail "generic/block/facing/calibrated_sculk_sensor did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass