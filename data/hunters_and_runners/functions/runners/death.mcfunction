title @a actionbar ["",{"selector":"@s"},{"text":" has fallen!"}]

execute if score runners_on_death hnr.settings matches 1 run gamemode spectator
execute if score runners_on_death hnr.settings matches 1 run team leave @s
execute if score runners_on_death hnr.settings matches 2 run trigger hnr.hunters.join

execute if entity @a[team=runners] run function hunters_and_runners:runners/id/apply

execute unless entity @a[team=runners] run title @a title {"text":"Hunters Win!","color":"aqua"}
execute unless entity @a[team=runners] as @p run function hunters_and_runners:information
