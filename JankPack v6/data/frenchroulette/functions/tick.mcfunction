scoreboard players remove @a[scores={rouletteDelay=0..}] rouletteDelay 1
execute as @a[scores={rouletteDelay=0}] as @e[type=armor_stand,sort=random,limit=1,tag=roulette] run scoreboard players set @s random 1
execute as @e[type=armor_stand,tag=roulette,scores={random=1},name="death"] run kill @a
execute as @e[type=armor_stand,tag=roulette,scores={random=1},name="death"] run playsound entity.generic.explode master @a ~ ~ ~ 30000000
execute as @e[type=armor_stand,tag=roulette,scores={random=1},name="life"] run playsound block.metal_pressure_plate.click_on master @a ~ ~ ~ 30000000 1.5
execute as @e[type=armor_stand,tag=roulette,scores={random=1},name="diamonds"] run give @a diamond 10
execute as @e[type=armor_stand,tag=roulette,scores={random=1},name="diamonds"] run playsound entity.player.levelup master @a ~ ~ ~ 30000000
execute as @e[type=armor_stand,tag=roulette,scores={random=1}] run scoreboard players set @s random 0