#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s hnr.runners.join 0

#> Add player to the team
team join runners
team modify runners color red

function hunters_and_runners:runners/id/update

#> Announce in chat player has joined the team
tellraw @a [{"selector":"@s","color":"red"}," joined the Runners"]
