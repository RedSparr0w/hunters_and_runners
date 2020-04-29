scoreboard players set @s hnr.information 0

tellraw @s ["",{"text":"===== Hunters & Runners =====","bold":true,"color":"gold"}]
tellraw @s ["Select a team:"]
tellraw @s [{"text":"[Hunters]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hnr.hunters.join"},"hoverEvent":{"action":"show_text","value":{"text":"Join Hunters","color":"aqua"}}}]
tellraw @s [{"text":"[Runners]","color":"red", "clickEvent":{"action":"run_command","value":"/trigger hnr.runners.join"},"hoverEvent":{"action":"show_text","value":{"text":"Join Runners","color":"red" }}}]
tellraw @s [" "]
tellraw @s [{"text":"===== SETTINGS =====","color":"gold"}]

#> List our settings
execute if score show_previous_pos hnr.settings matches 1 run tellraw @s ["Show runners last known pos: ",{"text":"[true]","color":"aqua","clickEvent":{"action":"run_command","value":"/function player_tracker:settings/show_previous_position"}}]
execute if score show_previous_pos hnr.settings matches 0 run tellraw @s ["Show runners last known pos: ",{"text":"[false]","color":"red","clickEvent":{"action":"run_command","value":"/function player_tracker:settings/show_previous_position"}}]
