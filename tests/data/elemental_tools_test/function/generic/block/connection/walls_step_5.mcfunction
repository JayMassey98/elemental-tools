## Unit test for elemental_tools:generic/block/connection/walls_step_5.mcfunction.

setblock ~1 ~1 ~1 minecraft:cobblestone_wall[up=false,waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/connection/walls_step_5 {east:"true",function:"true",north:"true",south:"true",waterlogged:"true",west:"true"}
execute if block ~1 ~1 ~1 minecraft:cobblestone_wall[up=false,waterlogged=false] run test fail "generic/block/connection/walls_step_5 left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass