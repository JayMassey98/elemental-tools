## Unit test for elemental_tools:waterscooper/block/facing_nesw.mcfunction.

setblock ~1 ~1 ~1 minecraft:amethyst_cluster
execute positioned ~1 ~1 ~1 run function elemental_tools:waterscooper/block/facing_nesw {facing:"north",waterlogged_next:"true"}
execute unless block ~1 ~1 ~1 minecraft:amethyst_cluster[facing=north,waterlogged=true] run test fail "waterscooper/block/facing_nesw did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass