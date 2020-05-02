#> Toggle our setting
execute if score runners_on_death hnr.settings matches 0 run scoreboard players set runners_on_death hnr.settings 3
execute if score runners_on_death hnr.settings matches 1 run scoreboard players set runners_on_death hnr.settings 0
execute if score runners_on_death hnr.settings matches 2 run scoreboard players set runners_on_death hnr.settings 1
#> Reset to last option
execute if score runners_on_death hnr.settings matches 3 run scoreboard players set runners_on_death hnr.settings 2

function hunters_and_runners:information
