## Unit test for elemental_tools:generic/block/connection/walls_step_4.mcfunction.

setblock ~1 ~1 ~1 minecraft:cobblestone_wall[waterlogged=false,west=low]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/connection/walls_step_4 {east:"true",function:"true",north:"true",south:"true",waterlogged:"true"}
execute if block ~1 ~1 ~1 minecraft:cobblestone_wall[waterlogged=false,west=low] run test fail "generic/block/connection/walls_step_4 left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass