## Use the item to raycast targets to update a target block, prevent additional uses if a valid one is reached, then determine if the durability needs updating.

# Raycast to Target Block
execute store result score @s elemental_tools_raycast_limit run attribute @s minecraft:block_interaction_range get 20
$execute anchored eyes positioned ^ ^ ^ run function elemental_tools:generic/step_raycast {tool:"$(tool)"}
scoreboard players reset @s elemental_tools_raycast_limit

# Prevent Additional Uses
$advancement revoke @s only elemental_tools:use_$(tool)
advancement revoke @s only elemental_tools:invoke_cooldown
scoreboard players set @s elemental_tools_cooldown 2

# Determine Durability Update
execute if entity @s[gamemode=creative] run return 0
execute unless score @s elemental_tools_durability_chance matches 1 run return 0

# Get Current Durability
scoreboard players set @s elemental_tools_item_hand 0
$execute if entity @s[nbt={equipment:{offhand:{id:"$(id)",components:{"minecraft:custom_data":{"$(tool)":1b}}}}}] run scoreboard players set @s elemental_tools_item_hand -1
$execute if entity @s[nbt={SelectedItem:{id:"$(id)",count:1,components:{"minecraft:custom_data":{"$(tool)":1b}}}}] run scoreboard players set @s elemental_tools_item_hand 1
execute if score @s elemental_tools_item_hand matches 1 store result score @s elemental_tools_item_damage run data get entity @s SelectedItem.components."minecraft:damage"
execute if score @s elemental_tools_item_hand matches -1 store result score @s elemental_tools_item_damage run data get entity @s equipment.offhand.components."minecraft:damage"

# Set New Durability
scoreboard players add @s elemental_tools_item_damage 1
execute store result storage elemental_tools damage int 1 run scoreboard players get @s elemental_tools_item_damage
#execute with storage elemental_tools as @s if score @s elemental_tools_item_hand matches 1 run item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:damage":$(damage)}}
#execute with storage elemental_tools as @s if score @s elemental_tools_item_hand matches -1 run item modify entity @s weapon.offhand {"function":"minecraft:set_components","components":{"minecraft:damage":$(damage)}}
function elemental_tools:generic/set_item_damage with storage elemental_tools

# Determine Item Break
execute if score @s elemental_tools_item_damage matches ..255 run return 0
$particle item{"item":"$(id)"} ~ ~1 ~ 0.15 0.2 0.15 0.1 8
playsound entity.item.break player @a[distance=..16] ~ ~ ~ 1 1 1
execute if score @s elemental_tools_item_hand matches 1 run return run item replace entity @s weapon.mainhand with air
execute if score @s elemental_tools_item_hand matches -1 run return run item replace entity @s weapon.offhand with air