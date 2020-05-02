#> Toggle our setting
execute if score show_previous_pos hnr.settings matches 1 run scoreboard players set show_previous_pos hnr.settings 2
execute if score show_previous_pos hnr.settings matches 0 run scoreboard players set show_previous_pos hnr.settings 1

#> Reset to first option
execute if score show_previous_pos hnr.settings matches 2 run scoreboard players set show_previous_pos hnr.settings 0

function hunters_and_runners:information
