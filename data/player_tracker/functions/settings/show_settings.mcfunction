tellraw @s [{"text":"--------------------","color":"green"}]
tellraw @s ["",{"text":"Hunters & Runners Settings:","bold":true,"color":"gold"}]

#> List our settings
execute if score show_previous_pos hnr.settings matches 1 run tellraw @s ["Show runners last known pos: ",{"text":"[true]","color":"aqua","clickEvent":{"action":"run_command","value":"/function player_tracker:settings/show_previous_position"}}]
execute unless score show_previous_pos hnr.settings matches 1 run tellraw @s ["Show runners last known pos: ",{"text":"[false]","color":"red","clickEvent":{"action":"run_command","value":"/function player_tracker:settings/show_previous_position"}}]

tellraw @s [{"text":"--------------------","color":"green"}]
