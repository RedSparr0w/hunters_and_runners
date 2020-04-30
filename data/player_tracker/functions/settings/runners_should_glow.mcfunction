#> Toggle our setting
execute if score runners_should_glow hnr.settings matches 0 run scoreboard players set runners_should_glow hnr.settings 2
execute if score runners_should_glow hnr.settings matches 1 run scoreboard players set runners_should_glow hnr.settings 0
execute if score runners_should_glow hnr.settings matches 2 run scoreboard players set runners_should_glow hnr.settings 1

function player_tracker:information
