execute if score #GLOBAL timer matches 6001 run tellraw @a {"text":"5 minutes remaining","color":"yellow"}
execute if score #GLOBAL timer matches 6001 run playsound block.note_block.pling master @a 0 0 0 1000000
execute if score #GLOBAL timer matches 6001 run bossbar set timer color yellow
execute if score #GLOBAL timer matches 6001 run bossbar set timer name {"text":"Timer","color":"yellow"}
execute if score #GLOBAL timer matches 3000 run tellraw @a {"text":"2:30 minutes remaining","color":"red"}
execute if score #GLOBAL timer matches 3000 run playsound block.note_block.pling master @a 0 0 0 1000000
execute if score #GLOBAL timer matches 3000 run bossbar set timer color red
execute if score #GLOBAL timer matches 3000 run bossbar set timer name {"text":"Timer","color":"red"}
execute if score #GLOBAL timer matches 1.. run bossbar set timer players @a
execute if score #GLOBAL timer matches 1.. run scoreboard players remove #GLOBAL timer 1
execute if score #GLOBAL timer matches 1 run tellraw @a {"text":"Time's up!","color":"red"}
execute if score #GLOBAL timer matches 1 run playsound block.note_block.pling master @a 0 0 0 1000000 0.5
execute if score #GLOBAL timer matches ..0 run bossbar set timer players
execute store result bossbar timer value run scoreboard players get #GLOBAL timer