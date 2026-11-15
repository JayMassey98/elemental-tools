## Unit test for elemental_tools:generic/block/connection/walls_step_2.mcfunction.

setblock ~1 ~1 ~1 minecraft:cobblestone_wall[east=low,waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/connection/walls_step_2 {function:"true",north:"true",waterlogged:"true"}
execute if block ~1 ~1 ~1 minecraft:cobblestone_wall[east=low,waterlogged=false] run test fail "generic/block/connection/walls_step_2 left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass