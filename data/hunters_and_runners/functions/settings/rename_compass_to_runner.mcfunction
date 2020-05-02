#> Toggle our setting
execute if score rename_compass_to_runner hnr.settings matches 1 run scoreboard players set rename_compass_to_runner hnr.settings 2
execute if score rename_compass_to_runner hnr.settings matches 0 run scoreboard players set rename_compass_to_runner hnr.settings 1

#> Reset to first option
execute if score rename_compass_to_runner hnr.settings matches 2 run scoreboard players set rename_compass_to_runner hnr.settings 0

function hunters_and_runners:information
