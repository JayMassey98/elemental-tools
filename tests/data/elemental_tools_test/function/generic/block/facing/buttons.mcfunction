## Unit test for elemental_tools:generic/block/facing/buttons.mcfunction.

setblock ~1 ~1 ~1 minecraft:acacia_button
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/facing/buttons {face:"true",facing:"north",powered:"true"}
execute unless block ~1 ~1 ~1 minecraft:acacia_button[face=true,facing=north,powered=true] run test fail "generic/block/facing/buttons did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass