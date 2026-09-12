## Alter blocks with specific static properties that match the outlined criteria.

# Concrete -> Concrete Powder
$execute if block ~ ~ ~ #minecraft:concrete run function elemental_tools:earthshaper/invoke_sound {sound:"$(sound)"}
execute if block ~ ~ ~ black_concrete run return run setblock ~ ~ ~ black_concrete_powder
execute if block ~ ~ ~ blue_concrete run return run setblock ~ ~ ~ blue_concrete_powder
execute if block ~ ~ ~ brown_concrete run return run setblock ~ ~ ~ brown_concrete_powder
execute if block ~ ~ ~ cyan_concrete run return run setblock ~ ~ ~ cyan_concrete_powder
execute if block ~ ~ ~ gray_concrete run return run setblock ~ ~ ~ gray_concrete_powder
execute if block ~ ~ ~ green_concrete run return run setblock ~ ~ ~ green_concrete_powder
execute if block ~ ~ ~ light_blue_concrete run return run setblock ~ ~ ~ light_blue_concrete_powder
execute if block ~ ~ ~ light_gray_concrete run return run setblock ~ ~ ~ light_gray_concrete_powder
execute if block ~ ~ ~ lime_concrete run return run setblock ~ ~ ~ lime_concrete_powder
execute if block ~ ~ ~ magenta_concrete run return run setblock ~ ~ ~ magenta_concrete_powder
execute if block ~ ~ ~ orange_concrete run return run setblock ~ ~ ~ orange_concrete_powder
execute if block ~ ~ ~ pink_concrete run return run setblock ~ ~ ~ pink_concrete_powder
execute if block ~ ~ ~ purple_concrete run return run setblock ~ ~ ~ purple_concrete_powder
execute if block ~ ~ ~ red_concrete run return run setblock ~ ~ ~ red_concrete_powder
execute if block ~ ~ ~ white_concrete run return run setblock ~ ~ ~ white_concrete_powder
execute if block ~ ~ ~ yellow_concrete run return run setblock ~ ~ ~ yellow_concrete_powder

# Concrete Powder -> Concrete
$execute if block ~ ~ ~ #minecraft:concrete_powders run function elemental_tools:earthshaper/invoke_sound {sound:"$(sound)"}
execute if block ~ ~ ~ black_concrete_powder run return run setblock ~ ~ ~ black_concrete
execute if block ~ ~ ~ blue_concrete_powder run return run setblock ~ ~ ~ blue_concrete
execute if block ~ ~ ~ brown_concrete_powder run return run setblock ~ ~ ~ brown_concrete
execute if block ~ ~ ~ cyan_concrete_powder run return run setblock ~ ~ ~ cyan_concrete
execute if block ~ ~ ~ gray_concrete_powder run return run setblock ~ ~ ~ gray_concrete
execute if block ~ ~ ~ green_concrete_powder run return run setblock ~ ~ ~ green_concrete
execute if block ~ ~ ~ light_blue_concrete_powder run return run setblock ~ ~ ~ light_blue_concrete
execute if block ~ ~ ~ light_gray_concrete_powder run return run setblock ~ ~ ~ light_gray_concrete
execute if block ~ ~ ~ lime_concrete_powder run return run setblock ~ ~ ~ lime_concrete
execute if block ~ ~ ~ magenta_concrete_powder run return run setblock ~ ~ ~ magenta_concrete
execute if block ~ ~ ~ orange_concrete_powder run return run setblock ~ ~ ~ orange_concrete
execute if block ~ ~ ~ pink_concrete_powder run return run setblock ~ ~ ~ pink_concrete
execute if block ~ ~ ~ purple_concrete_powder run return run setblock ~ ~ ~ purple_concrete
execute if block ~ ~ ~ red_concrete_powder run return run setblock ~ ~ ~ red_concrete
execute if block ~ ~ ~ white_concrete_powder run return run setblock ~ ~ ~ white_concrete
execute if block ~ ~ ~ yellow_concrete_powder run return run setblock ~ ~ ~ yellow_concrete