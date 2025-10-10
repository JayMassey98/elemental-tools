## Run the corresponding rotate function for the target block, which sets its position accordingly.

# Axis - X/Y/Z
execute if block ~ ~ ~ #elemental_tools:rotatable[axis=x] run return run function elemental_tools:windspanner/rotate/axis {position:1,axis_next:"y"}
execute if block ~ ~ ~ #elemental_tools:rotatable[axis=y] run return run function elemental_tools:windspanner/rotate/axis {position:2,axis_next:"z"}
execute if block ~ ~ ~ #elemental_tools:rotatable[axis=z] run return run function elemental_tools:windspanner/rotate/axis {position:3,axis_next:"x"}

# Facing - N/E/S/W/U/D
# TODO

# Rotation - 0-15
# TODO

# Shape - NS/EW/SE/SW/NW/NE
# TODO

# Type - T/B
# TODO