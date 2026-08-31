## Change blocks with specific facing (N/E/S/W/U/D) properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# N/E/S/W/U/D - Lightning Rods
$execute if block ~ ~ ~ exposed_lightning_rod run return run setblock ~ ~ ~ exposed_lightning_rod[facing=$(facing),powered=$(powered),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ lightning_rod run return run setblock ~ ~ ~ lightning_rod[facing=$(facing),powered=$(powered),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ oxidized_lightning_rod run return run setblock ~ ~ ~ oxidized_lightning_rod[facing=$(facing),powered=$(powered),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ waxed_exposed_lightning_rod run return run setblock ~ ~ ~ waxed_exposed_lightning_rod[facing=$(facing),powered=$(powered),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ waxed_lightning_rod run return run setblock ~ ~ ~ waxed_lightning_rod[facing=$(facing),powered=$(powered),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ waxed_oxidized_lightning_rod run return run setblock ~ ~ ~ waxed_oxidized_lightning_rod[facing=$(facing),powered=$(powered),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ waxed_weathered_lightning_rod run return run setblock ~ ~ ~ waxed_weathered_lightning_rod[facing=$(facing),powered=$(powered),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ weathered_lightning_rod run return run setblock ~ ~ ~ weathered_lightning_rod[facing=$(facing),powered=$(powered),waterlogged=$(waterlogged)]