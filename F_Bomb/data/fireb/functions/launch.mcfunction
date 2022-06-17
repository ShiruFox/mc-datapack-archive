scoreboard objectives add toBeFBombed dummy
scoreboard players set @r toBeFBombed 1
tellraw @a ["",{"text":"Just dropped The F Bomb on ","color":"dark_red"},{"selector":"@a[scores={toBeFBombed=1..}]","color":"gold"}]
execute as @a[scores={toBeFBombed=1..}] at @s run summon fireball ~-5 500 ~ {Motion:[0.0d,-2.0d,0.0d],Tags:["bomb"],ExplosionPower:10,}
execute as @a[scores={toBeFBombed=1..}] at @s run summon fireball ~ 500 ~-5 {Motion:[0.0d,-2.0d,0.0d],Tags:["bomb"],ExplosionPower:10}
execute as @a[scores={toBeFBombed=1..}] at @s run summon fireball ~5 500 ~ {Motion:[0.0d,-2.0d,0.0d],Tags:["bomb"],ExplosionPower:10}
execute as @a[scores={toBeFBombed=1..}] at @s run summon fireball ~ 500 ~5 {Motion:[0.0d,-2.0d,0.0d],Tags:["bomb"],ExplosionPower:10}
execute as @a[scores={toBeFBombed=1..}] at @s run summon fireball ~-3 500 ~-3 {Motion:[0.0d,-2.0d,0.0d],Tags:["bomb"],ExplosionPower:10}
execute as @a[scores={toBeFBombed=1..}] at @s run summon fireball ~-3 500 ~3 {Motion:[0.0d,-2.0d,0.0d],Tags:["bomb"],ExplosionPower:10}
execute as @a[scores={toBeFBombed=1..}] at @s run summon fireball ~3 500 ~-3 {Motion:[0.0d,-2.0d,0.0d],Tags:["bomb"],ExplosionPower:10}
execute as @a[scores={toBeFBombed=1..}] at @s run summon fireball ~3 500 ~3 {Motion:[0.0d,-2.0d,0.0d],Tags:["bomb"],ExplosionPower:10}
execute as @a[scores={toBeFBombed=1..}] run scoreboard players set @s toBeFBombed 0