execute as @e[tag=bomb,nbt={OnGround:1b}] run data merge entity @s {Fuse:0}
execute as @e[tag=bomb] at @s run particle firework ~ ~ ~ 0 500 0 0.01 1000

execute if score #GLOBAL aSTimer matches 200 run title @a subtitle {"text":"10","color":"red"}
execute if score #GLOBAL aSTimer matches 180 run title @a subtitle {"text":"9","color":"red"}
execute if score #GLOBAL aSTimer matches 160 run title @a subtitle {"text":"8","color":"red"}
execute if score #GLOBAL aSTimer matches 140 run title @a subtitle {"text":"7","color":"red"}
execute if score #GLOBAL aSTimer matches 120 run title @a subtitle {"text":"6","color":"red"}
execute if score #GLOBAL aSTimer matches 100 run title @a subtitle {"text":"5","color":"dark_red"}
execute if score #GLOBAL aSTimer matches 80 run title @a subtitle {"text":"4","color":"dark_red"}
execute if score #GLOBAL aSTimer matches 60 run title @a subtitle {"text":"3","color":"dark_red"}
execute if score #GLOBAL aSTimer matches 40 run title @a subtitle {"text":"2","color":"dark_red"}
execute if score #GLOBAL aSTimer matches 20 run title @a subtitle {"text":"1","color":"dark_red"}
execute if score #GLOBAL aSTimer matches 0 run title @a subtitle {"text":"0","color":"dark_red"}
execute if score #GLOBAL aSTimer matches 0 run function cbomb:launch

execute if score #GLOBAL aSTimer matches -1.. run scoreboard players remove #GLOBAL aSTimer 1