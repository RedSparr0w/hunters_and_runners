execute as @e[team=hunters,nbt={Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if entity @e[team=runners] run function player_tracker:compass/import_pos/main
