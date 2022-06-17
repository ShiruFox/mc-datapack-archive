scoreboard objectives add toBeCBombed dummy
scoreboard players set @r toBeCBombed 1
tellraw @a ["","THE C BOMB HAS BEEN DROPPED ON ",{"selector":"@a[scores={toBeCBombed=1..}]","color":"gold"}]
title @a times 0 220 20
playsound entity.ender_dragon.growl master @a ~ ~ ~ 1000000 0.75
scoreboard objectives add aSTimer dummy
scoreboard players set #GLOBAL aSTimer 200