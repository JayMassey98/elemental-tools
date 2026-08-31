## Rotate blocks with specific facing (N/E/S/W/U/D) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# N/E/S/W/D - General
$execute if block ~ ~ ~ hopper run return run setblock ~ ~ ~ hopper[facing=$(facing_neswd_next)]

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states_2)

# N/E/S/W/U/D - General
$execute if block ~ ~ ~ barrel run return run setblock ~ ~ ~ barrel[facing=$(facing_neswud_next)]
$execute if block ~ ~ ~ dispenser run return run setblock ~ ~ ~ dispenser[facing=$(facing_neswud_next)]
$execute if block ~ ~ ~ dropper run return run setblock ~ ~ ~ dropper[facing=$(facing_neswud_next)]
$execute if block ~ ~ ~ end_rod run return run setblock ~ ~ ~ end_rod[facing=$(facing_neswud_next)]
$execute if block ~ ~ ~ observer run return run setblock ~ ~ ~ observer[facing=$(facing_neswud_next)]
$execute if block ~ ~ ~ piston[extended=false] run return run setblock ~ ~ ~ piston[facing=$(facing_neswud_next)]
$execute if block ~ ~ ~ sticky_piston[extended=false] run return run setblock ~ ~ ~ sticky_piston[facing=$(facing_neswud_next)]

# N/E/S/W/U/D - Lightning Rods
$execute if block ~ ~ ~ #minecraft:lightning_rods[powered=false,waterlogged=false] run return run function elemental_tools:generic/block/facing/lightning_rods {states:6,facing:"$(facing_neswud_next)",powered:"false",waterlogged:"false"}
$execute if block ~ ~ ~ #minecraft:lightning_rods[powered=false,waterlogged=true] run return run function elemental_tools:generic/block/facing/lightning_rods {states:6,facing:"$(facing_neswud_next)",powered:"false",waterlogged:"true"}
$execute if block ~ ~ ~ #minecraft:lightning_rods[powered=true,waterlogged=false] run return run function elemental_tools:generic/block/facing/lightning_rods {states:6,facing:"$(facing_neswud_next)",powered:"true",waterlogged:"false"}
$execute if block ~ ~ ~ #minecraft:lightning_rods[powered=true,waterlogged=true] run return run function elemental_tools:generic/block/facing/lightning_rods {states:6,facing:"$(facing_neswud_next)",powered:"true",waterlogged:"true"}

# N/E/S/W/U/D - Shulker Boxes
$execute if block ~ ~ ~ #minecraft:shulker_boxes run return run function elemental_tools:generic/block/facing/shulker_boxes {states:6,facing:"$(facing_neswud_next)"}