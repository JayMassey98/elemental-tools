## Change blocks with specific facing (N/E/S/W/U/D) properties that match the outlined criteria.

# N/E/S/W - Campfires
$execute if block ~ ~ ~ campfire run return run setblock ~ ~ ~ campfire[facing=$(facing),lit=$(lit),signal_fire=$(signal_fire),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ soul_campfire run return run setblock ~ ~ ~ soul_campfire[facing=$(facing),lit=$(lit),signal_fire=$(signal_fire),waterlogged=$(waterlogged)]