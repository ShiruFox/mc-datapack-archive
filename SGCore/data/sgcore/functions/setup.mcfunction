# Runs on start
gamerule doDaylightCycle false
forceload add 1 1
scoreboard objectives add startGame dummy
gamerule showDeathMessages false
gamerule commandBlockOutput false
gamerule announceAdvancements false
scoreboard objectives add death deathCount
scoreboard objectives add borderBar dummy
gamemode creative @a
tp @a 0.5 255 0.5
worldborder center 0.5 0.5
worldborder set 51
bossbar add suddendeath {"text":"SUDDEN DEATH","color":"dark_red","bold":true}
bossbar set suddendeath color purple
bossbar set suddendeath max 1
bossbar set suddendeath value 1
bossbar set minecraft:suddendeath style notched_12