scoreboard players set @s hnr.hunters.join 0

team join hunters
team modify hunters color aqua
tellraw @a [{"selector":"@s","color":"aqua"}," joined the Hunters"]

#> Give the hunters a compass to track players
give @s minecraft:compass{compass_type:"tracking_device",display:{Name:'[{"text":"Tracking Compass","italic":"false"}]',Lore:['{"text":"Detects players nearby.","color":"gray","italic": false}']},LodestoneTracked:0b}

tellraw @s ["You are now a Hunter, keep the compass in your mainhand, offhand or the last slot of the hotbar for it to update automatically."]
