## Invoke the block state setup in preparation for setting the block state.

# Set the block state for the specified tool with added waterlogged parameters if it can be waterlogged.
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[waterlogged=false] run return run function elemental_tools:$(tool)/set_block_state {waterlogged:"false", waterlogged_next:"true"}
$execute if block ~ ~ ~ #elemental_tools:triggers_waterscooper[waterlogged=true] run return run function elemental_tools:$(tool)/set_block_state {waterlogged:"true", waterlogged_next:"false"}

# Fallback to setting the block state without setting any of the waterlogged parameters.
$function elemental_tools:$(tool)/set_block_state {waterlogged:"null", waterlogged_next:"null"}