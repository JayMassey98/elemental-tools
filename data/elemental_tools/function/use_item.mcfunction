## Attempt to update the target block with a matching method, perform the required results, whilst ensuring no stored items are lost.

# NOTE: Attempt to keep the majority of this code generalised for all tools where possible.
# For now, variable names like rotate will be used until further elemental tools are added.
# At that point, it might be the case that a few of these variable names need updating.

# Get the correct item slot.
# TODO: Check Mainhand Slot
# TODO: Check Offhand Slot

# Backup any required storage for the target block.
# TODO

# Run the corresponding rotate function for the target block, which sets the position accordingly.
# TODO: Check Axis
# TODO: Check Facing
# TODO: Check Rotation
# TODO: Check Shape
# TODO: Check Type

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

# Restore any required storage for the target block.
# TODO