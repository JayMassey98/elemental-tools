## Plumb blocks with specific rotation (0-15) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# 0-15 - Ceiling Hanging Signs
$execute if block ~ ~ ~ #minecraft:ceiling_hanging_signs[attached=false] run return run function elemental_tools:generic/block/rotation/ceiling_hanging_signs {states:16,attached:"false",rotation:"$(rotation)",waterlogged:"$(waterlogged_next)"}
$execute if block ~ ~ ~ #minecraft:ceiling_hanging_signs[attached=true] run return run function elemental_tools:generic/block/rotation/ceiling_hanging_signs {states:16,attached:"true",rotation:"$(rotation)",waterlogged:"$(waterlogged_next)"}

# 0-15 - Standing Signs
$execute if block ~ ~ ~ #minecraft:standing_signs run return run function elemental_tools:generic/block/rotation/standing_signs {states:16,rotation:"$(rotation)",waterlogged:"$(waterlogged_next)"}