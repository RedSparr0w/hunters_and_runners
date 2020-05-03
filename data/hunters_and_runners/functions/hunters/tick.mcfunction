execute if entity @a[team=hunters,nbt=!{Inventory:[{tag:{compass_type:"tracking_device"}}]}] as @a[team=hunters,nbt=!{Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s run function hunters_and_runners:hunters/give_compass

execute as @a[team=hunters,nbt={Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s run function hunters_and_runners:hunters/track_player

execute if score hunters_should_glow hnr.settings matches 1 as @a[team=runners] at @a[team=runners] run effect give @a[team=hunters,distance=0..15] minecraft:glowing 2 1 true
