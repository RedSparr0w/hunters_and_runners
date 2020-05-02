execute as @a[team=runners] run function hunters_and_runners:runners/get_position

execute if score runners_should_glow hnr.settings matches 1 as @a[team=hunters] at @a[team=hunters] run effect give @a[team=runners,distance=0..15] minecraft:glowing 2 1 true
