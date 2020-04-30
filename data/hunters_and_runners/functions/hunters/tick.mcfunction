execute as @e[team=hunters,nbt={Dimension:0,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if score show_previous_pos hnr.settings matches 0 unless entity @e[team=runners,nbt={Dimension:0}] run function hunters_and_runners:hunters/compass/not_found
execute as @e[team=hunters,nbt={Dimension:-1,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if score show_previous_pos hnr.settings matches 0 unless entity @e[team=runners,nbt={Dimension:-1}] run function hunters_and_runners:hunters/compass/not_found
execute as @e[team=hunters,nbt={Dimension:1,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if score show_previous_pos hnr.settings matches 0 unless entity @e[team=runners,nbt={Dimension:1}] run function hunters_and_runners:hunters/compass/not_found

execute as @e[team=hunters,nbt={Dimension:0,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if entity @e[team=runners,nbt={Dimension:0}] run function hunters_and_runners:hunters/compass/overworld
execute as @e[team=hunters,nbt={Dimension:-1,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if entity @e[team=runners,nbt={Dimension:-1}] run function hunters_and_runners:hunters/compass/the_nether
execute as @e[team=hunters,nbt={Dimension:1,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s if entity @e[team=runners,nbt={Dimension:1}] run function hunters_and_runners:hunters/compass/the_end

execute if score hunters_should_glow hnr.settings matches 1 as @e[team=runners] at @e[team=runners] run effect give @e[team=hunters,distance=0..15] minecraft:glowing 2 1 true
