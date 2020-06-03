#> Figure out who to track
scoreboard players operation player_to_track hnr.tracking_id = @s hnr.tracking_id
execute as @a[team=runners,sort=arbitrary] if score @s hnr.tracking_id = player_to_track hnr.tracking_id run tag @s add tracking
execute unless entity @a[tag=tracking] if entity @s[nbt={Dimension:"minecraft:overworld"}] run tag @a[team=runners,limit=1,sort=nearest,nbt={Dimension:"minecraft:overworld"}] add tracking
execute unless entity @a[tag=tracking] if entity @s[nbt={Dimension:"minecraft:the_end"}] run tag @a[team=runners,limit=1,sort=nearest,nbt={Dimension:"minecraft:the_end"}] add tracking
execute unless entity @a[tag=tracking] if entity @s[nbt={Dimension:"minecraft:the_nether"}] run tag @a[team=runners,limit=1,sort=nearest,nbt={Dimension:"minecraft:the_nether"}] add tracking

#>Debug
#tellraw @s [{"text":"Tracking: ","color":"green"},{"selector":"@a[tag=tracking]"}]

#> Update the compass
execute if entity @a[tag=tracking] run function hunters_and_runners:hunters/compass/update
