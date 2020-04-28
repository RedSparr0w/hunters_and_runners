execute as @e[nbt={Inventory:[{Slot:-106b,tag:{compass_type:"tracking_device"}}]}] at @s if entity @e[tag=target] run function player_tracker:compass/import_pos/main
execute as @e[nbt={Inventory:[{Slot:8b,tag:{compass_type:"tracking_device"}}]}] at @s if entity @e[tag=target] run function player_tracker:compass/import_pos/main
execute as @e[nbt={SelectedItem:{tag:{compass_type:"tracking_device"}}}] at @s if entity @e[tag=target] run function player_tracker:compass/import_pos/main
