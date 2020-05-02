#> Load our default settings
scoreboard objectives add hnr.settings dummy

#- Show previous last tracked position in current dimension
execute unless score show_previous_pos hnr.settings matches 0.. run scoreboard players set show_previous_pos hnr.settings 1
execute unless score rename_compass_to_runner hnr.settings matches 0.. run scoreboard players set rename_compass_to_runner hnr.settings 1
execute unless score hunters_should_glow hnr.settings matches 0.. run scoreboard players set hunters_should_glow hnr.settings 0
execute unless score runners_should_glow hnr.settings matches 0.. run scoreboard players set runners_should_glow hnr.settings 0
execute unless score runners_on_death hnr.settings matches 0.. run scoreboard players set runners_on_death hnr.settings 1
execute unless score give_runner_headstart hnr.settings matches 0.. run scoreboard players set give_runner_headstart hnr.settings 1
