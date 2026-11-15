## Unit test for elemental_tools:generic/step_raycast.mcfunction.

setblock ~1 ~1 ~1 minecraft:stone
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/step_raycast {tool:"true"}
execute if block ~1 ~1 ~1 minecraft:stone run test fail "generic/step_raycast left block unchanged"
setblock ~1 ~1 ~1 minecraft:air
test pass