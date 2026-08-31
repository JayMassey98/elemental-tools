## Set the item (either the offhand or mainhand item, depending on item_hand) to have its damage value updated.

$execute if score @s elemental_tools_item_hand matches 1.. run item modify entity @s weapon {"function":"minecraft:set_components","components":{"minecraft:damage":$(damage)}}
$execute if score @s elemental_tools_item_hand matches ..-1 run item modify entity @s weapon.offhand {"function":"minecraft:set_components","components":{"minecraft:damage":$(damage)}}