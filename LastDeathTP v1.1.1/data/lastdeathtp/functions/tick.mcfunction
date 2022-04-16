# On Death 
execute as @a[scores={deathCountTP=1}] run execute as @e[type=armor_stand,name="deathStand"] run tellraw @a ["",{"text":"LDTP: ","bold":true,"color":"gold"},"Previous death location deleted"]
execute as @a[scores={deathCountTP=1}] run execute as @e[type=armor_stand,name="deathStand"] at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:barrier"},NoGravity:1,DropItem:false,Time:20,CustomName:'"temp"'}
execute as @a[scores={deathCountTP=1}] run execute as @e[type=armor_stand,name="deathStand"] at @s run kill @e[type=armor_stand,name="deathStand"]
execute as @a[scores={deathCountTP=1}] run execute as @e[type=falling_block,name="temp"] at @s run forceload remove ~ ~
execute as @a[scores={deathCountTP=1}] at @s run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Invulnerable:1,CustomName:'"deathStand"'}
execute as @a[scores={deathCountTP=1}] run tellraw @a ["",{"text":"LDTP: ","bold":true,"color":"gold"},"Death location added"]
execute as @a[scores={deathCountTP=1}] at @s run forceload add ~ ~
execute as @a[scores={deathCountTP=1}] unless entity @s[scores={deathMsgToggle=1}] run tellraw @s ["",{"text":"LDTP: ","bold":true,"color":"gold"},{"text":"You died, how unfortunate. Click ","color":"green"},{"text":"here ","color":"white","clickEvent":{"action":"run_command","value":"/function lastdeathtp:tp"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to teleport","italic":true}]}},{"text":"to teleport to your last death.","color":"green"}]
execute as @a[scores={deathCountTP=1}] run scoreboard players set @s deathCountTP 0

# On TP
execute as @e[type=armor_stand,name="deathStand"] run execute as @a[scores={deathTP=1}] run tellraw @a ["",{"text":"LDTP: ","bold":true,"color":"gold"},"Teleporting..."]
execute as @a[scores={deathTP=1}] run tp @s @e[type=armor_stand,name="deathStand",limit=1]
execute as @e[type=armor_stand,name="deathStand"] run execute as @a[scores={deathTP=1}] run effect give @s resistance 5 255
execute as @a[scores={deathTP=1}] unless entity @e[type=armor_stand,name="deathStand"] run tellraw @a ["",{"text":"LDTP: ","bold":true,"color":"gold"},{"text":"Error; Couldn't find previous death","color":"red"}]
execute as @a[scores={deathTP=1}] run scoreboard players set @s deathTP 0