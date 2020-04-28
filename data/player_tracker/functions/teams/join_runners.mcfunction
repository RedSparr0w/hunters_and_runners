scoreboard players set @s runners.join 0

team join runners
team modify runners color red
tellraw @a [{"selector":"@s","color":"red"}," joined the Runners"]
