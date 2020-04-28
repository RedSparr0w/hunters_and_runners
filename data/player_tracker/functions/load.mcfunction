forceload add 0 0
setblock 0 1 1 minecraft:shulker_box
scoreboard objectives add xpos dummy
scoreboard objectives add ypos dummy
scoreboard objectives add zpos dummy

scoreboard objectives add hunters.join trigger
scoreboard objectives add runners.join trigger

team add hunters
team modify hunters color aqua

team add runners
team modify runners color red

tellraw @a [{"text":"--------------------","color":"green"}]
tellraw @a ["",{"text":"Welcome to Hunters & Runners by RedSparr0w!","bold":true,"color":"gold"}]
tellraw @a ["Join the ",{"text":"[Hunters]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hunters.join"},"hoverEvent":{"action":"show_text","value":{"text":"Join Hunters","color":"aqua"}}}," or ",{"text":"[Runners]","color":"red","clickEvent":{"action":"run_command","value":"/trigger runners.join"},"hoverEvent":{"action":"show_text","value":{"text":"Join Runners","color":"red"}}}," team!"]
tellraw @a [{"text":"--------------------","color":"green"}]
