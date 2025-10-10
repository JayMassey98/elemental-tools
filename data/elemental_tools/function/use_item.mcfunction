## Use the item to raycast targets to update a target block, prevent additional uses if a valid one is reached, then determine if the durability needs updating.

# Raycast and Update Target Block
execute store result score @s elemental_tools_raycast_limit run attribute @s minecraft:block_interaction_range get 20
$execute anchored eyes positioned ^ ^ ^ run function elemental_tools:raycast {tool:"$(tool)"}
scoreboard players reset @s elemental_tools_raycast_limit

# Prevent Additional Uses
$advancement revoke @s only elemental_tools:use_$(tool)
advancement revoke @s only elemental_tools:cooldown
scoreboard players set @s elemental_tools_cooldown 2

# Determine the durability decrementation chance based on the target block's total possible rotations.
# TODO: Axis = 1 in 3
# TODO: Facing + #elemental_tools:positions_8 = 1 in 8
# TODO: Facing + #elemental_tools:positions_6 = 1 in 6
# TODO: Facing + #elemental_tools:positions_5 = 1 in 5
# TODO: Facing + not inside any positions tag = 1 in 4
# TODO: Rotation = 1 in 16
# TODO: Shape + #elemental_tools:positions_6 = 1 in 6
# TODO: Shape + not inside any positions tag = 1 in 2
# TODO: Type = 1 in 2

# Trigger the results of a successful use of the tool.
# TODO: Perform Effects
# TODO: Check Durability