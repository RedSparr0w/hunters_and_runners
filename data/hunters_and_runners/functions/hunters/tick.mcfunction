execute if entity @a[team=hunters,nbt=!{Inventory:[{tag:{compass_type:"tracking_device"}}]}] as @a[team=hunters,nbt=!{Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s run function hunters_and_runners:hunters/give_compass

execute if score show_previous_pos hnr.settings matches 0 unless entity @a[team=runners,nbt={Dimension:0}] as @a[team=hunters,nbt={Dimension:0,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s run function hunters_and_runners:hunters/compass/not_found
execute if score show_previous_pos hnr.settings matches 0 unless entity @a[team=runners,nbt={Dimension:-1}] as @a[team=hunters,nbt={Dimension:-1,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s run function hunters_and_runners:hunters/compass/not_found
execute if score show_previous_pos hnr.settings matches 0 unless entity @a[team=runners,nbt={Dimension:1}] as @a[team=hunters,nbt={Dimension:1,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s run function hunters_and_runners:hunters/compass/not_found

execute if entity @a[team=runners,nbt={Dimension:0}] as @a[team=hunters,nbt={Dimension:0,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s run function hunters_and_runners:hunters/compass/overworld
execute if entity @a[team=runners,nbt={Dimension:-1}] as @a[team=hunters,nbt={Dimension:-1,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s run function hunters_and_runners:hunters/compass/the_nether
execute if entity @a[team=runners,nbt={Dimension:1}] as @a[team=hunters,nbt={Dimension:1,Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s run function hunters_and_runners:hunters/compass/the_end

execute if score hunters_should_glow hnr.settings matches 1 as @a[team=runners] at @a[team=runners] run effect give @a[team=hunters,distance=0..15] minecraft:glowing 2 1 true
