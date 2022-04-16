# Will run after 45 + 15 + 5 + 2.5 minutes
tellraw @a ["",{"text":"The ","color":"gray"},{"text":"Border ","color":"aqua"},{"text":"is slowly shrinking to a diameter of ","color":"gray"},{"text":"10 ","bold":true},{"text":"blocks, you have ","color":"gray"},{"text":"2 ","color":"red"},{"text":"minutes.","color":"gray"}]
playsound entity.ender_dragon.ambient master @a 0 0 0 1000 0.75 1
worldborder set 11 120
summon armor_stand 1 1 1 {Invulnerable:1,Invisible:1,NoGravity:1,CustomName:'{"text":"lastBorder"}'}