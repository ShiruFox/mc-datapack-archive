# Before Start
execute unless entity @e[name="gameStarted"] run effect give @a mining_fatigue 1 9 true
execute unless entity @e[name="gameStarted"] run effect give @a weakness 1 9 true
execute unless entity @e[name="gameStarted"] run effect give @a resistance 1 9 true
bossbar set minecraft:border players @a
execute unless entity @e[name="lastBorder"] run scoreboard players remove #borderTime borderBar 1
execute store result bossbar minecraft:border value run scoreboard players get #borderTime borderBar
# Border Timer Test 1,2,3,4
execute if entity @e[name="gameStarted"] unless entity @e[name="firstBorder"] if score #borderTime borderBar matches ..0 run function sgcore:firstborder
execute if entity @e[name="firstBorder"] unless entity @e[name="secondBorder"] if score #borderTime borderBar matches ..0 run function sgcore:secondborder
execute if entity @e[name="secondBorder"] unless entity @e[name="thirdBorder"] if score #borderTime borderBar matches ..0 run function sgcore:thirdborder
execute if entity @e[name="thirdBorder"] unless entity @e[name="lastBorder"] if score #borderTime borderBar matches ..0 run function sgcore:lastborder
# If on last Border
execute if entity @e[name="lastBorder"] run scoreboard players set #borderTime borderBar 1000
execute if entity @e[name="lastBorder"] run bossbar set minecraft:border visible false
execute if entity @e[name="lastBorder"] run bossbar set suddendeath players @a
# On Player Death
execute if entity @a[scores={death=1}] run tellraw @a ["",{"selector":"@a[scores={death=1}] ","color":"white"},{"text":" has fallen in battle.","color":"gold"},"\n",{"text":"A cannon shot can be heard in the distance.","color":"gold"}]
execute as @a[scores={death=1}] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 100000 1 1
execute as @a[scores={death=1}] run gamemode spectator @s
execute as @a[scores={death=1}] run scoreboard players set @s death 0
# Border Colours
execute if score #borderTime borderBar matches 5000.. run bossbar set border color blue
execute if score #borderTime borderBar matches 1000..4999 run bossbar set border color yellow
execute if score #borderTime borderBar matches ..999 run bossbar set border color red