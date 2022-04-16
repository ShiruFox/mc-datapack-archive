# Will run after 45 minutes
tellraw @a ["",{"text":"The ","color":"gray"},{"text":"Border ","color":"aqua"},{"text":"is shrinking to a diameter of ","color":"gray"},{"text":"500 ","bold":true},{"text":"blocks, you have ","color":"gray"},{"text":"90 ","color":"red"},{"text":"seconds to get inside.","color":"gray"},"\n",{"text":"It will shrink again in 15 minutes.","italic":true,"color":"white"}]
playsound entity.ender_dragon.ambient master @a 0 0 0 1000 1 1
worldborder set 501 90
bossbar set minecraft:border max 18000
scoreboard players set #borderTime borderBar 18000
summon armor_stand 1 1 1 {Invulnerable:1,Invisible:1,NoGravity:1,CustomName:'{"text":"firstBorder"}'}