## Unit test for elemental_tools:windspanner/block/facing_nesw.mcfunction.

setblock ~1 ~1 ~1 minecraft:barrel[waterlogged=false]
execute positioned ~1 ~1 ~1 run function elemental_tools:windspanner/block/facing_nesw {facing_nesw_next:"north",facing_neswd_next:"north",facing_neswud_next:"north",states_nesw:"4",states_neswd:"4",states_neswud:"4",waterlogged:"true"}
execute unless block ~1 ~1 ~1 minecraft:barrel[facing=north] run test fail "windspanner/block/facing_nesw did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass