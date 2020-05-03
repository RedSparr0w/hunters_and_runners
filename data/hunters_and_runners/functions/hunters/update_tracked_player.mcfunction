#> Set the ID of the Runner we are tracking
scoreboard players operation @s hnr.tracking_id = @s hnr.track_player

#> Reset the scoreboard so this isn't run multiple times
scoreboard players reset @s hnr.track_player

#> Set tracking id to 0 if we don't have that many runners
execute if score @s hnr.tracking_id > Runners hnr.teams.amount run scoreboard players set @s hnr.tracking_id 0
