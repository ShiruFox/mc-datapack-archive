execute as @a[scores={stimer=-101}] run kill @e[type=armor_stand,name="dontmove"]

#3

playsound entity.experience_orb.pickup master @a[scores={stimer=60}] ~ ~ ~ 1000 1.5
title @a[scores={stimer=60}] title {"text":"3","color":"green"}

#2
title @a[scores={stimer=40}] title {"text":"2","color":"yellow"}
playsound entity.experience_orb.pickup master @a[scores={stimer=40}] ~ ~ ~ 1000 1

#1
title @a[scores={stimer=20}] title {"text":"1","color":"red"}
playsound entity.experience_orb.pickup master @a[scores={stimer=20}] ~ ~ ~ 1000 0.5

#0
title @a[scores={stimer=0}] title {"text":"Stop!","color":"dark_red"}
playsound entity.experience_orb.pickup master @a[scores={stimer=0}] ~ ~ ~ 1000 0.25
execute as @a[scores={stimer=0}] at @s run summon armor_stand ~ ~ ~ {CustomName:'"dontmove"',Invisible:1b}

#-1
title @a[scores={stimer=-20}] title {"text":"5","color":"red"}
playsound block.note_block.pling master @a[scores={stimer=-20}] ~ ~ ~ 1000 1

#-2
title @a[scores={stimer=-40}] title {"text":"4","color":"red"}
playsound block.note_block.pling master @a[scores={stimer=-40}] ~ ~ ~ 1000 1

#-3
title @a[scores={stimer=-60}] title {"text":"3","color":"red"}
playsound block.note_block.pling master @a[scores={stimer=-60}] ~ ~ ~ 1000 1

#-4
title @a[scores={stimer=-80}] title {"text":"2","color":"yellow"}
playsound block.note_block.pling master @a[scores={stimer=-80}] ~ ~ ~ 1000 1

#-5
title @a[scores={stimer=-100}] title {"text":"1","color":"green"}
playsound block.note_block.pling master @a[scores={stimer=-100}] ~ ~ ~ 1000 1.5
execute if entity @a[scores={stimer=-100}] run kill @e[type=armor_stand,name="dontmove"]

#Always
scoreboard players remove @a[scores={stimer=-100..}] stimer 1

#On move
execute as @e[name="dontmove",type=armor_stand] at @s run scoreboard players set @e[type=player,distance=0.01..] stimer -101
execute as @e[name="dontmove",type=armor_stand] at @s run title @e[type=player,distance=0.01..] title {"text":"You moved","color":"red"}
execute as @e[name="dontmove",type=armor_stand] at @s run playsound entity.wither.death master @e[type=player,distance=0.01..] ~ ~ ~ 1 1
execute as @e[name="dontmove",type=armor_stand] at @s run kill @e[type=player,distance=0.01..]
