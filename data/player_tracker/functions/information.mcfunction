#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s hnr.information 0

#> Spacing
tellraw @s [" "]
tellraw @s [" "]

tellraw @s ["",{"text":"===== Hunters & Runners =====","bold":true,"color":"gold"}]
tellraw @s ["Select a team to join:"]
tellraw @s [{"text":"[Hunters]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hnr.hunters.join"},"hoverEvent":{"action":"show_text","value":{"text":"Join Hunters","color":"aqua"}}}]
tellraw @s [{"text":"[Runners]","color":"red", "clickEvent":{"action":"run_command","value":"/trigger hnr.runners.join"},"hoverEvent":{"action":"show_text","value":{"text":"Join Runners","color":"red" }}}]
tellraw @s [" "]

#> List our settings
tellraw @s [{"text":"===== Settings =====","color":"gold"}]
execute if score show_previous_pos hnr.settings matches 1 run tellraw @s [{"text":"Show runners last known pos: ","hoverEvent":{"action":"show_text","value":{"text":"Show where the runner last was before they changed dimensions"}}},{"text":"[true]","color":"aqua","clickEvent":{"action":"run_command","value":"/function player_tracker:settings/show_previous_position"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score show_previous_pos hnr.settings matches 0 run tellraw @s [{"text":"Show runners last known pos: ","hoverEvent":{"action":"show_text","value":{"text":"Show where the runner last was before they changed dimensions"}}},{"text":"[false]","color":"red","clickEvent":{"action":"run_command","value":"/function player_tracker:settings/show_previous_position"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

#> Spacing
tellraw @s [" "]
tellraw @s [" "]
