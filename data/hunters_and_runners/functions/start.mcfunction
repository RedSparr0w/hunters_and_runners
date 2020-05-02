spreadplayers ~ ~ 0 10 false @a

effect clear @a

effect give @a minecraft:saturation 3 255 true

execute if score give_runner_headstart hnr.settings matches 1 run effect give @a[team=hunters] minecraft:slowness 10 255 true
execute if score give_runner_headstart hnr.settings matches 1 run effect give @a[team=hunters] minecraft:jump_boost 10 137 true
execute if score give_runner_headstart hnr.settings matches 1 run effect give @a[team=hunters] minecraft:blindness 10 1 true

execute if score give_runner_headstart hnr.settings matches 2 run effect give @a[team=hunters] minecraft:slowness 30 255 true
execute if score give_runner_headstart hnr.settings matches 2 run effect give @a[team=hunters] minecraft:jump_boost 30 137 true
execute if score give_runner_headstart hnr.settings matches 2 run effect give @a[team=hunters] minecraft:blindness 30 1 true

execute if score give_runner_headstart hnr.settings matches 3 run effect give @a[team=hunters] minecraft:slowness 60 255 true
execute if score give_runner_headstart hnr.settings matches 3 run effect give @a[team=hunters] minecraft:jump_boost 60 137 true
execute if score give_runner_headstart hnr.settings matches 3 run effect give @a[team=hunters] minecraft:blindness 60 1 true
