execute as @e[team=hunters,nbt={Dimension:0,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if score show_previous_pos hnr.settings matches 0 unless entity @e[team=runners,nbt={Dimension:0}] run function player_tracker:hunters/not_found
execute as @e[team=hunters,nbt={Dimension:-1,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if score show_previous_pos hnr.settings matches 0 unless entity @e[team=runners,nbt={Dimension:-1}] run function player_tracker:hunters/not_found
execute as @e[team=hunters,nbt={Dimension:1,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if score show_previous_pos hnr.settings matches 0 unless entity @e[team=runners,nbt={Dimension:1}] run function player_tracker:hunters/not_found

execute as @e[team=hunters,nbt={Dimension:0,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if entity @e[team=runners,nbt={Dimension:0}] run function player_tracker:hunters/update_compass
execute as @e[team=hunters,nbt={Dimension:-1,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if entity @e[team=runners,nbt={Dimension:-1}] run function player_tracker:hunters/update_compass
execute as @e[team=hunters,nbt={Dimension:1,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if entity @e[team=runners,nbt={Dimension:1}] run function player_tracker:hunters/update_compass

execute if score hunters_should_glow hnr.settings matches 1 as @e[team=runners] at @e[team=runners] run effect give @e[team=hunters,distance=0..20] minecraft:glowing 2 1 true
