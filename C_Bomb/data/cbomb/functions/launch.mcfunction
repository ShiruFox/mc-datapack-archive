execute as @a[scores={toBeCBombed=1..}] at @s run summon creeper ~-5 500 ~ {Motion:[0.0d,-2.0d,0.0d],Invulnerable:1,Tags:["bomb"],PersistenceRequired:1b,ExplosionRadius:10}
execute as @a[scores={toBeCBombed=1..}] at @s run summon creeper ~ 500 ~-5 {Motion:[0.0d,-2.0d,0.0d],Invulnerable:1,Tags:["bomb"],PersistenceRequired:1b,ExplosionRadius:10}
execute as @a[scores={toBeCBombed=1..}] at @s run summon creeper ~5 500 ~ {Motion:[0.0d,-2.0d,0.0d],Invulnerable:1,Tags:["bomb"],PersistenceRequired:1b,ExplosionRadius:10}
execute as @a[scores={toBeCBombed=1..}] at @s run summon creeper ~ 500 ~5 {Motion:[0.0d,-2.0d,0.0d],Invulnerable:1,Tags:["bomb"],PersistenceRequired:1b,ExplosionRadius:10}
execute as @a[scores={toBeCBombed=1..}] at @s run summon creeper ~-3 500 ~-3 {Motion:[0.0d,-2.0d,0.0d],Invulnerable:1,Tags:["bomb"],PersistenceRequired:1b,ExplosionRadius:10}
execute as @a[scores={toBeCBombed=1..}] at @s run summon creeper ~-3 500 ~3 {Motion:[0.0d,-2.0d,0.0d],Invulnerable:1,Tags:["bomb"],PersistenceRequired:1b,ExplosionRadius:10}
execute as @a[scores={toBeCBombed=1..}] at @s run summon creeper ~3 500 ~-3 {Motion:[0.0d,-2.0d,0.0d],Invulnerable:1,Tags:["bomb"],PersistenceRequired:1b,ExplosionRadius:10}
execute as @a[scores={toBeCBombed=1..}] at @s run summon creeper ~3 500 ~3 {Motion:[0.0d,-2.0d,0.0d],Invulnerable:1,Tags:["bomb"],PersistenceRequired:1b,ExplosionRadius:10}
execute as @a[scores={toBeCBombed=1..}] run scoreboard players set @s toBeCBombed 0