execute as @e[tag=bomb] at @s run particle firework ~ ~ ~ 0 500 0 0.01 1000
execute as @e[tag=bomb] run data merge entity @s {Motion:[0.0d,-3.0d,0.0d]}