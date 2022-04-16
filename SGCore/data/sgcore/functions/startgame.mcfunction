# Run this to start the game
gamerule doDaylightCycle true
time set 0
playsound minecraft:entity.wither.death master @a ~ ~ ~ 1000 1 1
worldborder set 1001 60
effect give @a minecraft:saturation 5 255 true
effect give @a minecraft:resistance 60 255
clear @a
effect give @a minecraft:instant_health 1 10 true
bossbar add border {"text":"Border","color":"aqua"}
bossbar set minecraft:border color blue
bossbar set minecraft:border max 54000
bossbar set minecraft:border value 54000
scoreboard players set #borderTime borderBar 54000
summon armor_stand 1 1 1 {Invulnerable:1,Invisible:1,NoGravity:1,CustomName:'{"text":"gameStarted"}'}