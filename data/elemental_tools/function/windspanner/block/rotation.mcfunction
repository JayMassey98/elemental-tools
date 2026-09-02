## Rotate blocks with specific rotation (0-15) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# 0-15 - Ceiling Hanging Signs
$execute if block ~ ~ ~ #minecraft:ceiling_hanging_signs[attached=false] run return run function elemental_tools:generic/block/rotation/ceiling_hanging_signs {attached:"false",rotation:"$(rotation_next)",waterlogged:"$(waterlogged)"}
$execute if block ~ ~ ~ #minecraft:ceiling_hanging_signs[attached=true] run return run function elemental_tools:generic/block/rotation/ceiling_hanging_signs {attached:"true",rotation:"$(rotation_next)",waterlogged:"$(waterlogged)"}

# 0-15 - Skulls
$execute if block ~ ~ ~ #minecraft:skulls[powered=false] run return run function elemental_tools:generic/block/rotation/skulls {powered:"false",rotation:"$(rotation_next)"}
$execute if block ~ ~ ~ #minecraft:skulls[powered=true] run return run function elemental_tools:generic/block/rotation/skulls {powered:"true",rotation:"$(rotation_next)"}

# 0-15 - Standing Signs
$execute if block ~ ~ ~ #minecraft:standing_signs run return run function elemental_tools:generic/block/rotation/standing_signs {rotation:"$(rotation_next)",waterlogged:"$(waterlogged)"}