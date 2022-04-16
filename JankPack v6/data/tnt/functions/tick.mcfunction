playsound entity.wither.ambient master @a[scores={tntimer=300}] ~ ~ ~ 1000 1
title @a[scores={tntimer=280}] title {"text":"14","color":"green"}
title @a[scores={tntimer=260}] title {"text":"13","color":"green"}
title @a[scores={tntimer=240}] title {"text":"12","color":"green"}
title @a[scores={tntimer=220}] title {"text":"11","color":"green"}
title @a[scores={tntimer=200}] title {"text":"10","color":"yellow"}
title @a[scores={tntimer=180}] title {"text":"9","color":"yellow"}
title @a[scores={tntimer=160}] title {"text":"8","color":"yellow"}
title @a[scores={tntimer=140}] title {"text":"7","color":"yellow"}
title @a[scores={tntimer=120}] title {"text":"6","color":"yellow"}
title @a[scores={tntimer=100}] title {"text":"5","color":"red"}
title @a[scores={tntimer=80}] title {"text":"4","color":"red"}
title @a[scores={tntimer=60}] title {"text":"3","color":"red"}
title @a[scores={tntimer=40}] title {"text":"2","color":"red"}
title @a[scores={tntimer=20}] title {"text":"1","color":"red"}
execute as @a[scores={tntimer=0}] at @s run summon tnt ~ ~ ~ {Fuse:45}
execute as @a[scores={tntimer=0}] at @s run summon tnt ~2 ~ ~ {Fuse:50}
execute as @a[scores={tntimer=0}] at @s run summon tnt ~ ~ ~2 {Fuse:50}
execute as @a[scores={tntimer=0}] at @s run summon tnt ~-2 ~ ~ {Fuse:50}
execute as @a[scores={tntimer=0}] at @s run summon tnt ~ ~ ~-2 {Fuse:50}
scoreboard players remove @a[scores={tntimer=0..}] tntimer 1
