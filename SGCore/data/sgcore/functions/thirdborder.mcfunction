# Will run after 45 + 15 + 5 minutes
tellraw @a ["",{"text":"The ","color":"gray"},{"text":"Border ","color":"aqua"},{"text":"is shrinking to a diameter of ","color":"gray"},{"text":"50 ","bold":true},{"text":"blocks, you have ","color":"gray"},{"text":"30 ","color":"red"},{"text":"seconds to get inside.","color":"gray"},"\n",{"text":"It will shrink again in 1.5 minutes.","italic":true,"color":"white"}]
playsound entity.ender_dragon.ambient master @a 0 0 0 1 1 1
worldborder set 51 30
bossbar set minecraft:border max 1800
scoreboard players set #borderTime borderBar 1800
summon armor_stand 1 1 1 {Invulnerable:1,Invisible:1,NoGravity:1,CustomName:'{"text":"thirdBorder"}'}