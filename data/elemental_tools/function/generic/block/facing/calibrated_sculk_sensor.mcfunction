## Change blocks with specific facing (N/E/S/W/U/D) properties that match the outlined criteria.

# N/E/S/W - Calibrated Sculk Sensors
$execute if block ~ ~ ~ calibrated_sculk_sensor run return run setblock ~ ~ ~ calibrated_sculk_sensor[facing=$(facing),power=$(power),sculk_sensor_phase=$(sculk_sensor_phase),waterlogged=$(waterlogged)]