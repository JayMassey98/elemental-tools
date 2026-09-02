## Change blocks with specific connection (N+E+S+W+U+D) properties that match the outlined criteria.

# N+E+S+W+U+D - Sculk Vein
$execute if block ~ ~ ~ sculk_vein run return run setblock ~ ~ ~ sculk_vein[down=$(down),east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]