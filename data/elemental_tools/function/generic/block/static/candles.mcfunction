## Change blocks with specific static properties that match the outlined criteria.

# Set Position
$scoreboard players set @s elemental_tools_durability_chance_maximum $(states)

# Candles
$execute if block ~ ~ ~ black_candle run return run setblock ~ ~ ~ black_candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ blue_candle run return run setblock ~ ~ ~ blue_candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ brown_candle run return run setblock ~ ~ ~ brown_candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ candle run return run setblock ~ ~ ~ candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ cyan_candle run return run setblock ~ ~ ~ cyan_candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ gray_candle run return run setblock ~ ~ ~ gray_candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ green_candle run return run setblock ~ ~ ~ green_candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ light_blue_candle run return run setblock ~ ~ ~ light_blue_candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ light_gray_candle run return run setblock ~ ~ ~ light_gray_candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ lime_candle run return run setblock ~ ~ ~ lime_candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ magenta_candle run return run setblock ~ ~ ~ magenta_candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ orange_candle run return run setblock ~ ~ ~ orange_candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ pink_candle run return run setblock ~ ~ ~ pink_candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ purple_candle run return run setblock ~ ~ ~ purple_candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ red_candle run return run setblock ~ ~ ~ red_candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ white_candle run return run setblock ~ ~ ~ white_candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]
$execute if block ~ ~ ~ yellow_candle run return run setblock ~ ~ ~ yellow_candle[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)]