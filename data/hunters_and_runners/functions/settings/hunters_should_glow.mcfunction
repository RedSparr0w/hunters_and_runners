#> Toggle our setting
execute if score hunters_should_glow hnr.settings matches 0 run scoreboard players set hunters_should_glow hnr.settings 2
execute if score hunters_should_glow hnr.settings matches 1 run scoreboard players set hunters_should_glow hnr.settings 0
execute if score hunters_should_glow hnr.settings matches 2 run scoreboard players set hunters_should_glow hnr.settings 1

function hunters_and_runners:information
