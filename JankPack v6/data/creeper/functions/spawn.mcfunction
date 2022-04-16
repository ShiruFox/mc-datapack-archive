summon creeper ~2 ~ ~
summon creeper ~ ~ ~2
summon creeper ~-2 ~ ~
summon creeper ~ ~ ~-2
execute as @e[type=creeper,distance=..5] run data merge entity @s {NoAI:1}
scoreboard players set @a ctimer 60