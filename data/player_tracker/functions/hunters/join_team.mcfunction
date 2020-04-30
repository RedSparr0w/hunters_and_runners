#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s hnr.hunters.join 0

#> Add player to the team
team join hunters
team modify hunters color aqua

#> Announce in chat player has joined the team
tellraw @a [{"selector":"@s","color":"aqua"}," joined the Hunters"]

#> Give the hunters a compass to track players
give @s minecraft:compass{compass_type:"tracking_device",display:{Name:'[{"text":"Tracking Compass","italic":"false"}]',Lore:['{"text":"Detects players nearby.","color":"gray","italic": false}']},LodestoneTracked:0b}

tellraw @s ["",{"text":"You are now a Hunter,","color":"aqua"},{"text":"\n"},{"text":"Keep the compass in your main/off hand or the last slot on the hotbar for it to update automatically.","color":"aqua"},{"text":"\n"},{"text":"Note: The compass makes a noise that can be heard by others when held in the main/offhand slot.","italic":true,"color":"gray"}]
