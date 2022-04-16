execute as @e[type=item] at @s if entity @s[y=0,dy=-1000] run scoreboard players set @s voiditem 1

execute as @a at @s if entity @s[y=-50,dy=-1000] run scoreboard players set @s voidplayer 1

execute as @a[scores={voidplayer=1}] at @s run tp @s ~ 500 ~
execute as @a[scores={voidplayer=1}] run effect give @s minecraft:instant_damage 1 1 true
execute as @a[scores={voidplayer=1}] run effect give @s wither 3 4 true
execute as @a[scores={voidplayer=1}] run effect give @s minecraft:blindness 3 4 true
execute as @a[scores={voidplayer=1}] run scoreboard players set @s voidplayer 0

execute as @e[type=item,scores={voiditem=1}] run data merge entity @s {NoGravity:1,Motion:[0.0d,0.0d,0.0d]}
execute as @e[type=item,scores={voiditem=1}] at @s run tp @s ~ 1 ~
execute as @e[type=item,scores={voiditem=1}] run scoreboard players set @s voiditem 0