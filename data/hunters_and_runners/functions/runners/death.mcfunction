title @a actionbar ["",{"selector":"@s"},{"text":" has fallen!"}]

execute if score runners_on_death hnr.settings matches 1 run gamemode spectator
execute if score runners_on_death hnr.settings matches 2 run trigger hnr.hunters.join

execute unless entity @e[gamemode=survival,team=runners] run title @a title {"text":"Hunters Win!","color":"aqua"}
execute unless entity @e[gamemode=survival,team=runners] as @p run function hunters_and_runners:information
