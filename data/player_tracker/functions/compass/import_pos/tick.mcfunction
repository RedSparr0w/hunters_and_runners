execute as @e[nbt={Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if entity @e[tag=target] run function player_tracker:compass/import_pos/main
