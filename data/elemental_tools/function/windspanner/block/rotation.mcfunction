## Rotate blocks with specific rotation (0-15) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# 0-15 - Ceiling Hanging Signs
$execute if block ~ ~ ~ #minecraft:ceiling_hanging_signs[attached=false,waterlogged=false] run return run function elemental_tools:generic/block/rotation/ceiling_hanging_signs {states:16,attached:"false",rotation:"$(rotation_next)",waterlogged:"false"}
$execute if block ~ ~ ~ #minecraft:ceiling_hanging_signs[attached=false,waterlogged=true] run return run function elemental_tools:generic/block/rotation/ceiling_hanging_signs {states:16,attached:"false",rotation:"$(rotation_next)",waterlogged:"true"}
$execute if block ~ ~ ~ #minecraft:ceiling_hanging_signs[attached=true,waterlogged=false] run return run function elemental_tools:generic/block/rotation/ceiling_hanging_signs {states:16,attached:"true",rotation:"$(rotation_next)",waterlogged:"false"}
$execute if block ~ ~ ~ #minecraft:ceiling_hanging_signs[attached=true,waterlogged=true] run return run function elemental_tools:generic/block/rotation/ceiling_hanging_signs {states:16,attached:"true",rotation:"$(rotation_next)",waterlogged:"true"}

# 0-15 - Skulls
$execute if block ~ ~ ~ #minecraft:skulls[powered=false] run return run function elemental_tools:generic/block/rotation/skulls {states:16,powered:"false",rotation:"$(rotation_next)"}
$execute if block ~ ~ ~ #minecraft:skulls[powered=true] run return run function elemental_tools:generic/block/rotation/skulls {states:16,powered:"true",rotation:"$(rotation_next)"}

# 0-15 - Standing Signs
$execute if block ~ ~ ~ #minecraft:standing_signs[waterlogged=false] run return run function elemental_tools:generic/block/rotation/standing_signs {states:16,rotation:"$(rotation_next)",waterlogged:"false"}
$execute if block ~ ~ ~ #minecraft:standing_signs[waterlogged=true] run return run function elemental_tools:generic/block/rotation/standing_signs {states:16,rotation:"$(rotation_next)",waterlogged:"true"}