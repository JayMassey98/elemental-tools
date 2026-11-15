## Unit test for elemental_tools:generic/block/rotation/skulls.mcfunction.

setblock ~1 ~1 ~1 minecraft:creeper_head
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/rotation/skulls {powered:"true",rotation:"0"}
execute unless block ~1 ~1 ~1 minecraft:creeper_head[powered=true,rotation=0] run test fail "generic/block/rotation/skulls did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass