# bruh
execute unless entity @e[tag=keepInvStand] as @a[limit=1] run summon armor_stand 0 500 0 {Tags:[keepInvStand],Invisible:1,Invulnerable:1,NoGravity:1}

# On death
execute as @a[scores={keepInvDeathC=1},tag=keepInvPlayer] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:[tempKeepInvStand],Invisible:1b}
execute as @e[tag=tempKeepInvStand] at @s run tag @e[type=item,distance=..2] add keepInvItem
execute as @e[tag=tempKeepInvStand] at @s run tag @p add toReturnItems
execute as @e[tag=tempKeepInvStand] at @s run scoreboard players set @p keepInvDeathC 0
kill @e[tag=tempKeepInvStand]
execute as @e[tag=keepInvItem] run tp @s @e[tag=keepInvStand,limit=1]

# While dead
execute as @e[tag=keepInvItem] run data merge entity @s {Age:-32768,Motion:[0.0d,0.0d,0.0d],Fire:-1s,NoGravity:1b}
execute as @e[tag=keepInvItem] run tag @s add keepInvItemWaiting
execute as @e[tag=keepInvItemWaiting] run tag @s remove keepInvItem

# After respawn
execute as @e[tag=toReturnItems] run tp @e[tag=keepInvItemWaiting] @s
execute as @e[tag=toReturnItems] unless entity @e[tag=keepInvItemWaiting] run tag @s remove toReturnItems