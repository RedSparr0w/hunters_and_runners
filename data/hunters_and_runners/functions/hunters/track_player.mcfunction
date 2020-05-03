scoreboard players operation player_to_track hnr.tracking_id = @s hnr.tracking_id
execute as @a[team=runners,sort=arbitrary] if score @s hnr.tracking_id = player_to_track hnr.tracking_id run tag @s add tracking
