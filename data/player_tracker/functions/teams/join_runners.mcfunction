#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s hnr.runners.join 0

team join runners
team modify runners color red
tellraw @a [{"selector":"@s","color":"red"}," joined the Runners"]
