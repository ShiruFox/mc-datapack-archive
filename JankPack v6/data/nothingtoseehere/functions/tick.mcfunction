execute unless entity @a[scores={ignorethis=0..}] run scoreboard players set @a ignorethis 1
scoreboard players add @a[scores={ignorethis=..40100}] ignorethis 1

tellraw @a[scores={ignorethis=39600}] {"text":"_BooperDooper_ joined the game","color":"yellow"}
tellraw @a[scores={ignorethis=39700}] {"text":"<_BooperDooper_> ello"}
tellraw @a[scores={ignorethis=39900}] {"text":"_BooperDooper_ was blown up by Creeper"}
tellraw @a[scores={ignorethis=39960}] {"text":"<_BooperDooper_> shit"}
tellraw @a[scores={ignorethis=40000}] {"text":"<_BooperDooper_> guess I suck"}
tellraw @a[scores={ignorethis=40050}] {"text":"_BooperDooper_ left the game","color":"yellow"}