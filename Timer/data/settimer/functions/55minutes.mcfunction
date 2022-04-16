tellraw @a {"text":"55 minute timer started","color":"green"}
playsound block.note_block.pling master @a 0 0 0 1000000 1.5
scoreboard players set #GLOBAL timer 66000
bossbar set timer name {"text":"Timer","color":"aqua"}
bossbar set timer color blue
bossbar set timer max 66000
bossbar set timer visible true
bossbar set timer value 66000