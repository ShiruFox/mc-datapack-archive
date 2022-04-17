execute in the_end as @e[type=item,distance=0..] at @s if entity @s[y=0,dy=-1000] run tag @s add voidItem
execute in the_nether as @e[type=item,distance=0..] at @s if entity @s[y=0,dy=-1000] run tag @s add voidItem
execute in overworld as @e[type=item,distance=0..] at @s if entity @s[y=-64,dy=-1000] run tag @s add voidItem

execute in the_end as @a[distance=0..] at @s if entity @s[y=-50,dy=-1000] run tag @s add voidPlayer
execute in the_nether as @a[distance=0..] at @s if entity @s[y=-50,dy=-1000] run tag @s add voidPlayer
execute in overworld as @a[distance=0..] at @s if entity @s[y=-100,dy=-1000] run tag @s add voidPlayer

execute in the_end as @a[tag=voidPlayer,distance=0..] at @s run tp @s ~ 500 ~
execute in the_nether as @a[tag=voidPlayer,distance=0..] at @s run tp @s ~ 500 ~
execute in overworld as @a[tag=voidPlayer,distance=0..] at @s run tp @s ~ 1000 ~
execute as @a[tag=voidPlayer] run effect give @s minecraft:instant_damage 1 1 true
execute as @a[tag=voidPlayer] run effect give @s wither 3 4 true
execute as @a[tag=voidPlayer] run effect give @s minecraft:blindness 3 4 true
execute as @a[tag=voidPlayer] run tag @s remove voidPlayer

execute in the_end as @e[tag=voidItem,distance=0..] at @s run tp @s ~ 1 ~
execute in the_nether as @e[tag=voidItem,distance=0..] at @s run tp @s ~ 1 ~
execute in overworld as @e[tag=voidItem,distance=0..] at @s run tp @s ~ -63 ~
execute as @e[tag=voidItem] run tag @s remove voidItem
