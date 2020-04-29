execute as @e[team=hunters,nbt={Dimension:0,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if score show_previous_pos hnr.settings matches 0 unless entity @e[team=runners,nbt={Dimension:0}] run function player_tracker:hunters/not_found
execute as @e[team=hunters,nbt={Dimension:-1,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if score show_previous_pos hnr.settings matches 0 unless entity @e[team=runners,nbt={Dimension:-1}] run function player_tracker:hunters/not_found
execute as @e[team=hunters,nbt={Dimension:1,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if score show_previous_pos hnr.settings matches 0 unless entity @e[team=runners,nbt={Dimension:1}] run function player_tracker:hunters/not_found

execute as @e[team=hunters,nbt={Dimension:0,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if entity @e[team=runners,nbt={Dimension:0}] run function player_tracker:hunters/overworld
execute as @e[team=hunters,nbt={Dimension:-1,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if entity @e[team=runners,nbt={Dimension:-1}] run function player_tracker:hunters/the_nether
execute as @e[team=hunters,nbt={Dimension:1,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if entity @e[team=runners,nbt={Dimension:1}] run function player_tracker:hunters/the_end
