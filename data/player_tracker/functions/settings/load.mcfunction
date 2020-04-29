#> Load our default settings
scoreboard objectives add hnr.settings dummy

#- Show previous last tracked position in current dimension
execute unless score show_previous_pos hnr.settings matches 0.. run scoreboard players set show_previous_pos hnr.settings 1
