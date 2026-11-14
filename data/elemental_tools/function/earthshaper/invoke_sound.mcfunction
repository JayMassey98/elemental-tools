## Invoke the specified sound associated with altering the target block.

# Play a layered three-note chord of the specified sound for all players nearby.
$execute run playsound minecraft:block.$(sound).place block @a[distance=..16] ~ ~ ~ 0.5 1 1
$execute run playsound minecraft:block.$(sound).place block @a[distance=..16] ~ ~ ~ 0.75 0.75 1
$execute run playsound minecraft:block.$(sound).place block @a[distance=..16] ~ ~ ~ 1 0.5 1