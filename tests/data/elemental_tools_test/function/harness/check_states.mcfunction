## Check the durability maximum a tool sets for one block. Call with {tool:"windspanner",block:"minecraft:oak_log[axis=x]",expected:3}.
## The maximum is how many states the block cycles through, so a full cycle costs about one durability.
## Run positioned at the test position, with a holder spawned.

$setblock ~ ~ ~ $(block)
scoreboard players reset @e[tag=armour.holder,limit=1] elemental_tools_durability_chance_maximum
$execute as @e[tag=armour.holder,limit=1] at @s run function elemental_tools:generic/invoke_block_state_setup {tool:"$(tool)"}
$execute unless score @e[tag=armour.holder,limit=1] elemental_tools_durability_chance_maximum matches $(expected) run function armour:harness/fail {message:"$(tool) on $(block) should set the durability maximum to $(expected)"}