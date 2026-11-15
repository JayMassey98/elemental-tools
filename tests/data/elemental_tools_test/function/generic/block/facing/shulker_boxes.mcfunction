## Unit test for elemental_tools:generic/block/facing/shulker_boxes.mcfunction.

setblock ~1 ~1 ~1 minecraft:black_shulker_box
execute positioned ~1 ~1 ~1 run function elemental_tools:generic/block/facing/shulker_boxes {facing:"north"}
execute unless block ~1 ~1 ~1 minecraft:black_shulker_box[facing=north] run test fail "generic/block/facing/shulker_boxes did not produce expected block state"
setblock ~1 ~1 ~1 minecraft:air
test pass