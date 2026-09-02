## Change blocks with specific connection (N+E+S+W+U+D) properties that match the outlined criteria.

# N+E+S+W+U+D - Resin Clump
$execute if block ~ ~ ~ resin_clump run return run setblock ~ ~ ~ resin_clump[down=$(down),east=$(east),north=$(north),south=$(south),up=$(up),waterlogged=$(waterlogged),west=$(west)]