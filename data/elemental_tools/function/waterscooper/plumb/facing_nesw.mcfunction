## Plumb the target block with facing N/E/S/W/U/D to be (un)waterlogged.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# N/E/S/W - Big Dripleaf
$execute if block ~ ~ ~ big_dripleaf[tilt=full] run return run setblock ~ ~ ~ big_dripleaf[facing=$(facing),tilt=full,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ big_dripleaf[tilt=none] run return run setblock ~ ~ ~ big_dripleaf[facing=$(facing),tilt=none,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ big_dripleaf[tilt=partial] run return run setblock ~ ~ ~ big_dripleaf[facing=$(facing),tilt=partial,waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ big_dripleaf[tilt=unstable] run return run setblock ~ ~ ~ big_dripleaf[facing=$(facing),tilt=unstable,waterlogged=$(waterlogged_next)]

# N/E/S/W - Calibrated Sculk Sensors
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=0] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=0,sculk_sensor_phase=inactive,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=1] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=1,sculk_sensor_phase=active,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=2] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=2,sculk_sensor_phase=active,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=3] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=3,sculk_sensor_phase=active,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=4] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=4,sculk_sensor_phase=active,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=5] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=5,sculk_sensor_phase=active,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=6] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=6,sculk_sensor_phase=active,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=7] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=7,sculk_sensor_phase=active,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=8] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=8,sculk_sensor_phase=active,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=9] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=9,sculk_sensor_phase=active,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=10] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=10,sculk_sensor_phase=active,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=11] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=11,sculk_sensor_phase=active,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=12] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=12,sculk_sensor_phase=active,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=13] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=13,sculk_sensor_phase=active,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=14] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=14,sculk_sensor_phase=active,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ calibrated_sculk_sensor[power=15] run return run setblock ~ ~ ~ calibrated_sculk_sensor[power=15,sculk_sensor_phase=active,facing=$(facing),waterlogged=$(waterlogged_next)]

# N/E/S/W - Campfires
$execute if block ~ ~ ~ campfire[lit=false,signal_fire=false] run return run setblock ~ ~ ~ campfire[lit=false,signal_fire=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ campfire[lit=false,signal_fire=true] run return run setblock ~ ~ ~ campfire[lit=false,signal_fire=true,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ campfire[lit=true,signal_fire=false] run return run setblock ~ ~ ~ campfire[lit=false,signal_fire=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ campfire[lit=true,signal_fire=true] run return run setblock ~ ~ ~ campfire[lit=false,signal_fire=true,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ soul_campfire[lit=false,signal_fire=false] run return run setblock ~ ~ ~ soul_campfire[lit=false,signal_fire=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ soul_campfire[lit=false,signal_fire=true] run return run setblock ~ ~ ~ soul_campfire[lit=false,signal_fire=true,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ soul_campfire[lit=true,signal_fire=false] run return run setblock ~ ~ ~ soul_campfire[lit=false,signal_fire=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ soul_campfire[lit=true,signal_fire=true] run return run setblock ~ ~ ~ soul_campfire[lit=false,signal_fire=true,facing=$(facing),waterlogged=$(waterlogged_next)]

# N/E/S/W - Chests
$execute if block ~ ~ ~ chest[type=single] run return run setblock ~ ~ ~ chest[type=single,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ copper_chest[type=single] run return run setblock ~ ~ ~ copper_chest[type=single,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ exposed_copper_chest[type=single] run return run setblock ~ ~ ~ exposed_copper_chest[type=single,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ oxidized_copper_chest[type=single] run return run setblock ~ ~ ~ oxidized_copper_chest[type=single,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_copper_chest[type=single] run return run setblock ~ ~ ~ waxed_copper_chest[type=single,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_exposed_copper_chest[type=single] run return run setblock ~ ~ ~ waxed_exposed_copper_chest[type=single,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_oxidized_copper_chest[type=single] run return run setblock ~ ~ ~ waxed_oxidized_copper_chest[type=single,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_weathered_copper_chest[type=single] run return run setblock ~ ~ ~ waxed_weathered_copper_chest[type=single,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ weathered_copper_chest[type=single] run return run setblock ~ ~ ~ weathered_copper_chest[type=single,facing=$(facing),waterlogged=$(waterlogged_next)]

# N/E/S/W - Copper Golem Statues
$execute if block ~ ~ ~ copper_golem_statue[copper_golem_pose=running] run return run setblock ~ ~ ~ copper_golem_statue[copper_golem_pose=running,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ copper_golem_statue[copper_golem_pose=sitting] run return run setblock ~ ~ ~ copper_golem_statue[copper_golem_pose=sitting,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ copper_golem_statue[copper_golem_pose=standing] run return run setblock ~ ~ ~ copper_golem_statue[copper_golem_pose=standing,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ copper_golem_statue[copper_golem_pose=star] run return run setblock ~ ~ ~ copper_golem_statue[copper_golem_pose=star,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ exposed_copper_golem_statue[copper_golem_pose=running] run return run setblock ~ ~ ~ exposed_copper_golem_statue[copper_golem_pose=running,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ exposed_copper_golem_statue[copper_golem_pose=sitting] run return run setblock ~ ~ ~ exposed_copper_golem_statue[copper_golem_pose=sitting,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ exposed_copper_golem_statue[copper_golem_pose=standing] run return run setblock ~ ~ ~ exposed_copper_golem_statue[copper_golem_pose=standing,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ exposed_copper_golem_statue[copper_golem_pose=star] run return run setblock ~ ~ ~ exposed_copper_golem_statue[copper_golem_pose=star,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ oxidized_copper_golem_statue[copper_golem_pose=running] run return run setblock ~ ~ ~ oxidized_copper_golem_statue[copper_golem_pose=running,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ oxidized_copper_golem_statue[copper_golem_pose=sitting] run return run setblock ~ ~ ~ oxidized_copper_golem_statue[copper_golem_pose=sitting,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ oxidized_copper_golem_statue[copper_golem_pose=standing] run return run setblock ~ ~ ~ oxidized_copper_golem_statue[copper_golem_pose=standing,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ oxidized_copper_golem_statue[copper_golem_pose=star] run return run setblock ~ ~ ~ oxidized_copper_golem_statue[copper_golem_pose=star,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_copper_golem_statue[copper_golem_pose=running] run return run setblock ~ ~ ~ waxed_copper_golem_statue[copper_golem_pose=running,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_copper_golem_statue[copper_golem_pose=sitting] run return run setblock ~ ~ ~ waxed_copper_golem_statue[copper_golem_pose=sitting,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_copper_golem_statue[copper_golem_pose=standing] run return run setblock ~ ~ ~ waxed_copper_golem_statue[copper_golem_pose=standing,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_copper_golem_statue[copper_golem_pose=star] run return run setblock ~ ~ ~ waxed_copper_golem_statue[copper_golem_pose=star,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_exposed_copper_golem_statue[copper_golem_pose=running] run return run setblock ~ ~ ~ waxed_exposed_copper_golem_statue[copper_golem_pose=running,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_exposed_copper_golem_statue[copper_golem_pose=sitting] run return run setblock ~ ~ ~ waxed_exposed_copper_golem_statue[copper_golem_pose=sitting,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_exposed_copper_golem_statue[copper_golem_pose=standing] run return run setblock ~ ~ ~ waxed_exposed_copper_golem_statue[copper_golem_pose=standing,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_exposed_copper_golem_statue[copper_golem_pose=star] run return run setblock ~ ~ ~ waxed_exposed_copper_golem_statue[copper_golem_pose=star,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_oxidized_copper_golem_statue[copper_golem_pose=running] run return run setblock ~ ~ ~ waxed_oxidized_copper_golem_statue[copper_golem_pose=running,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_oxidized_copper_golem_statue[copper_golem_pose=sitting] run return run setblock ~ ~ ~ waxed_oxidized_copper_golem_statue[copper_golem_pose=sitting,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_oxidized_copper_golem_statue[copper_golem_pose=standing] run return run setblock ~ ~ ~ waxed_oxidized_copper_golem_statue[copper_golem_pose=standing,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_oxidized_copper_golem_statue[copper_golem_pose=star] run return run setblock ~ ~ ~ waxed_oxidized_copper_golem_statue[copper_golem_pose=star,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_weathered_copper_golem_statue[copper_golem_pose=running] run return run setblock ~ ~ ~ waxed_weathered_copper_golem_statue[copper_golem_pose=running,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_weathered_copper_golem_statue[copper_golem_pose=sitting] run return run setblock ~ ~ ~ waxed_weathered_copper_golem_statue[copper_golem_pose=sitting,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_weathered_copper_golem_statue[copper_golem_pose=standing] run return run setblock ~ ~ ~ waxed_weathered_copper_golem_statue[copper_golem_pose=standing,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_weathered_copper_golem_statue[copper_golem_pose=star] run return run setblock ~ ~ ~ waxed_weathered_copper_golem_statue[copper_golem_pose=star,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ weathered_copper_golem_statue[copper_golem_pose=running] run return run setblock ~ ~ ~ weathered_copper_golem_statue[copper_golem_pose=running,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ weathered_copper_golem_statue[copper_golem_pose=sitting] run return run setblock ~ ~ ~ weathered_copper_golem_statue[copper_golem_pose=sitting,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ weathered_copper_golem_statue[copper_golem_pose=standing] run return run setblock ~ ~ ~ weathered_copper_golem_statue[copper_golem_pose=standing,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ weathered_copper_golem_statue[copper_golem_pose=star] run return run setblock ~ ~ ~ weathered_copper_golem_statue[copper_golem_pose=star,facing=$(facing),waterlogged=$(waterlogged_next)]

# N/E/S/W - Dried Ghasts
$execute if block ~ ~ ~ dried_ghast[hydration=0] run return run setblock ~ ~ ~ dried_ghast[hydration=0,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dried_ghast[hydration=1] run return run setblock ~ ~ ~ dried_ghast[hydration=1,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dried_ghast[hydration=2] run return run setblock ~ ~ ~ dried_ghast[hydration=2,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dried_ghast[hydration=3] run return run setblock ~ ~ ~ dried_ghast[hydration=3,facing=$(facing),waterlogged=$(waterlogged_next)]

# N/E/S/W - General
$execute if block ~ ~ ~ acacia_wall_sign run return run setblock ~ ~ ~ acacia_wall_sign[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ bamboo_wall_sign run return run setblock ~ ~ ~ bamboo_wall_sign[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ big_dripleaf_stem run return run setblock ~ ~ ~ big_dripleaf_stem[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ birch_wall_sign run return run setblock ~ ~ ~ birch_wall_sign[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ brain_coral_wall_fan run return run setblock ~ ~ ~ brain_coral_wall_fan[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ bubble_coral_wall_fan run return run setblock ~ ~ ~ bubble_coral_wall_fan[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ cherry_wall_sign run return run setblock ~ ~ ~ cherry_wall_sign[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ crimson_wall_sign run return run setblock ~ ~ ~ crimson_wall_sign[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dark_oak_wall_sign run return run setblock ~ ~ ~ dark_oak_wall_sign[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dead_brain_coral_wall_fan run return run setblock ~ ~ ~ dead_brain_coral_wall_fan[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dead_bubble_coral_wall_fan run return run setblock ~ ~ ~ dead_bubble_coral_wall_fan[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dead_fire_coral_wall_fan run return run setblock ~ ~ ~ dead_fire_coral_wall_fan[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dead_horn_coral_wall_fan run return run setblock ~ ~ ~ dead_horn_coral_wall_fan[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ dead_tube_coral_wall_fan run return run setblock ~ ~ ~ dead_tube_coral_wall_fan[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ decorated_pot run return run setblock ~ ~ ~ decorated_pot[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ ender_chest run return run setblock ~ ~ ~ ender_chest[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ fire_coral_wall_fan run return run setblock ~ ~ ~ fire_coral_wall_fan[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ horn_coral_wall_fan run return run setblock ~ ~ ~ horn_coral_wall_fan[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ jungle_wall_sign run return run setblock ~ ~ ~ jungle_wall_sign[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ ladder run return run setblock ~ ~ ~ ladder[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ mangrove_wall_sign run return run setblock ~ ~ ~ mangrove_wall_sign[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ oak_wall_sign run return run setblock ~ ~ ~ oak_wall_sign[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ pale_oak_wall_sign run return run setblock ~ ~ ~ pale_oak_wall_sign[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ spruce_wall_sign run return run setblock ~ ~ ~ spruce_wall_sign[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ trapped_chest run return run setblock ~ ~ ~ trapped_chest[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ tube_coral_wall_fan run return run setblock ~ ~ ~ tube_coral_wall_fan[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ warped_wall_sign run return run setblock ~ ~ ~ warped_wall_sign[facing=$(facing),waterlogged=$(waterlogged_next)]

# N/E/S/W - Small Dripleaves
$execute if block ~ ~ ~ small_dripleaf[half=lower] run return run setblock ~ ~ ~ small_dripleaf[half=lower,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ small_dripleaf[half=upper] run return run setblock ~ ~ ~ small_dripleaf[half=upper,facing=$(facing),waterlogged=$(waterlogged_next)]

# N/E/S/W - Stairs
$execute if block ~ ~ ~ #minecraft:stairs[half=bottom] run return run function elemental_tools:waterscooper/plumb/facing_nesw_stairs {states:2,facing:"$(facing)",half:"bottom",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:stairs[half=top] run return run function elemental_tools:waterscooper/plumb/facing_nesw_stairs {states:2,facing:"$(facing)",half:"top",waterlogged_next:"$(waterlogged_next)"}

# N/E/S/W - Trapdoors
$execute if block ~ ~ ~ #minecraft:trapdoors[half=bottom,open=false] run return run function elemental_tools:waterscooper/plumb/facing_nesw_trapdoors {states:2,facing:"$(facing)",half:"bottom",open:"false",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:trapdoors[half=bottom,open=true] run return run function elemental_tools:waterscooper/plumb/facing_nesw_trapdoors {states:2,facing:"$(facing)",half:"bottom",open:"true",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:trapdoors[half=top,open=false] run return run function elemental_tools:waterscooper/plumb/facing_nesw_trapdoors {states:2,facing:"$(facing)",half:"top",open:"false",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:trapdoors[half=top,open=true] run return run function elemental_tools:waterscooper/plumb/facing_nesw_trapdoors {states:2,facing:"$(facing)",half:"top",open:"true",waterlogged_next:"$(waterlogged_next)"}

# N/E/S/W - Wooden Shelves
$execute if block ~ ~ ~ #minecraft:wooden_shelves[powered=false,side_chain=center] run return run function elemental_tools:waterscooper/plumb/facing_nesw_wooden_shelves {states:2,facing:"$(facing)",powered:"false",side_chain:"center",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:wooden_shelves[powered=false,side_chain=left] run return run function elemental_tools:waterscooper/plumb/facing_nesw_wooden_shelves {states:2,facing:"$(facing)",powered:"false",side_chain:"left",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:wooden_shelves[powered=false,side_chain=right] run return run function elemental_tools:waterscooper/plumb/facing_nesw_wooden_shelves {states:2,facing:"$(facing)",powered:"false",side_chain:"right",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:wooden_shelves[powered=false,side_chain=unconnected] run return run function elemental_tools:waterscooper/plumb/facing_nesw_wooden_shelves {states:2,facing:"$(facing)",powered:"false",side_chain:"unconnected",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:wooden_shelves[powered=true,side_chain=center] run return run function elemental_tools:waterscooper/plumb/facing_nesw_wooden_shelves {states:2,facing:"$(facing)",powered:"true",side_chain:"center",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:wooden_shelves[powered=true,side_chain=left] run return run function elemental_tools:waterscooper/plumb/facing_nesw_wooden_shelves {states:2,facing:"$(facing)",powered:"true",side_chain:"left",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:wooden_shelves[powered=true,side_chain=right] run return run function elemental_tools:waterscooper/plumb/facing_nesw_wooden_shelves {states:2,facing:"$(facing)",powered:"true",side_chain:"right",waterlogged_next:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:wooden_shelves[powered=true,side_chain=unconnected] run return run function elemental_tools:waterscooper/plumb/facing_nesw_wooden_shelves {states:2,facing:"$(facing)",powered:"true",side_chain:"unconnected",waterlogged_next:"$(waterlogged_next)"}

# N/E/S/W/U/D - General
$execute if block ~ ~ ~ amethyst_cluster run return run setblock ~ ~ ~ amethyst_cluster[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ large_amethyst_bud run return run setblock ~ ~ ~ large_amethyst_bud[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ medium_amethyst_bud run return run setblock ~ ~ ~ medium_amethyst_bud[facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ small_amethyst_bud run return run setblock ~ ~ ~ small_amethyst_bud[facing=$(facing),waterlogged=$(waterlogged_next)]

# N/E/S/W/U/D - Lightning Rods
$execute if block ~ ~ ~ exposed_lightning_rod[powered=false] run return run setblock ~ ~ ~ exposed_lightning_rod[powered=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ exposed_lightning_rod[powered=true] run return run setblock ~ ~ ~ exposed_lightning_rod[powered=true,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ lightning_rod[powered=false] run return run setblock ~ ~ ~ lightning_rod[powered=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ lightning_rod[powered=true] run return run setblock ~ ~ ~ lightning_rod[powered=true,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ oxidized_lightning_rod[powered=false] run return run setblock ~ ~ ~ oxidized_lightning_rod[powered=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ oxidized_lightning_rod[powered=true] run return run setblock ~ ~ ~ oxidized_lightning_rod[powered=true,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_exposed_lightning_rod[powered=false] run return run setblock ~ ~ ~ waxed_exposed_lightning_rod[powered=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_exposed_lightning_rod[powered=true] run return run setblock ~ ~ ~ waxed_exposed_lightning_rod[powered=true,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_lightning_rod[powered=false] run return run setblock ~ ~ ~ waxed_lightning_rod[powered=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_lightning_rod[powered=true] run return run setblock ~ ~ ~ waxed_lightning_rod[powered=true,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_oxidized_lightning_rod[powered=false] run return run setblock ~ ~ ~ waxed_oxidized_lightning_rod[powered=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_oxidized_lightning_rod[powered=true] run return run setblock ~ ~ ~ waxed_oxidized_lightning_rod[powered=true,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_weathered_lightning_rod[powered=false] run return run setblock ~ ~ ~ waxed_weathered_lightning_rod[powered=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ waxed_weathered_lightning_rod[powered=true] run return run setblock ~ ~ ~ waxed_weathered_lightning_rod[powered=true,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ weathered_lightning_rod[powered=false] run return run setblock ~ ~ ~ weathered_lightning_rod[powered=false,facing=$(facing),waterlogged=$(waterlogged_next)]
$execute if block ~ ~ ~ weathered_lightning_rod[powered=true] run return run setblock ~ ~ ~ weathered_lightning_rod[powered=true,facing=$(facing),waterlogged=$(waterlogged_next)]