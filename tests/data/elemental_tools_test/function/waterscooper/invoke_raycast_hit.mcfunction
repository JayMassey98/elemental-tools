## Unit test for elemental_tools:waterscooper/invoke_raycast_hit.mcfunction.

setblock ~1 ~1 ~1 minecraft:stone
execute positioned ~1 ~1 ~1 run function elemental_tools:waterscooper/invoke_raycast_hit
execute unless block ~1 ~1 ~1 minecraft:water run test fail "waterscooper/invoke_raycast_hit did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass