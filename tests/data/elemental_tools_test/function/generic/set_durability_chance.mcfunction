## Unit test for elemental_tools:generic/set_durability_chance.mcfunction.

function elemental_tools_test:harness/spawn_holder

# With one possible state the chance is always 1.
scoreboard players set @e[tag=et_test_holder] elemental_tools_durability_chance_maximum 1
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:generic/set_durability_chance
execute unless entity @e[tag=et_test_holder,scores={elemental_tools_durability_chance=1}] run function elemental_tools_test:harness/fail {message:"maximum 1 should give chance 1"}

# With 5 possible states the chance is between 1 and 5.
scoreboard players set @e[tag=et_test_holder] elemental_tools_durability_chance_maximum 5
scoreboard players set @e[tag=et_test_holder] elemental_tools_durability_chance 0
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:generic/set_durability_chance
execute unless entity @e[tag=et_test_holder,scores={elemental_tools_durability_chance=1..5}] run function elemental_tools_test:harness/fail {message:"maximum 5 should give a chance between 1 and 5"}

# The same for the largest supported size (16 states).
scoreboard players set @e[tag=et_test_holder] elemental_tools_durability_chance_maximum 16
scoreboard players set @e[tag=et_test_holder] elemental_tools_durability_chance 0
execute as @e[tag=et_test_holder,limit=1] at @s run function elemental_tools:generic/set_durability_chance
execute unless entity @e[tag=et_test_holder,scores={elemental_tools_durability_chance=1..16}] run function elemental_tools_test:harness/fail {message:"maximum 16 should give a chance between 1 and 16"}
