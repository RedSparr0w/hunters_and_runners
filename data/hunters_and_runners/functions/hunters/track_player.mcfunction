#> Figure out who to track
scoreboard players operation player_to_track hnr.tracking_id = @s hnr.tracking_id
execute as @a[team=runners,sort=arbitrary] if score @s hnr.tracking_id = player_to_track hnr.tracking_id run tag @s add tracking
execute unless entity @a[tag=tracking] if entity @s[nbt={Dimension:0}] run tag @a[team=runners,limit=1,sort=nearest,nbt={Dimension:0}] add tracking
execute unless entity @a[tag=tracking] if entity @s[nbt={Dimension:1}] run tag @a[team=runners,limit=1,sort=nearest,nbt={Dimension:1}] add tracking
execute unless entity @a[tag=tracking] if entity @s[nbt={Dimension:-1}] run tag @a[team=runners,limit=1,sort=nearest,nbt={Dimension:-1}] add tracking

#>Debug
#tellraw @s [{"text":"Tracking: ","color":"green"},{"selector":"@a[tag=tracking]"}]

#> Update the compass
execute if entity @a[tag=tracking] run function hunters_and_runners:hunters/compass/update
