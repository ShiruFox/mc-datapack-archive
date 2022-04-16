# 3 seconds left
title @a[scores={ctimer=60}] title {"text":"3","color":"green"}
playsound entity.experience_orb.pickup master @a[scores={ctimer=60}] ~ ~ ~ 1000 1.25

title @a[scores={ctimer=40}] title {"text":"2","color":"yellow"}
playsound entity.experience_orb.pickup master @a[scores={ctimer=40}] ~ ~ ~ 1000 1

title @a[scores={ctimer=20}] title {"text":"1","color":"red"}
playsound entity.experience_orb.pickup master @a[scores={ctimer=20}] ~ ~ ~ 1000 0.75

scoreboard players remove @a[scores={ctimer=1..}] ctimer 1
execute if entity @a[scores={ctimer=..0}] as @e[type=creeper] run data merge entity @s {NoAI:0}