#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s hnr.information 0

#> Spacing
tellraw @s [" "]
tellraw @s [" "]

tellraw @s ["",{"text":"===== Hunters & Runners =====","bold":true,"color":"gold"}]
tellraw @s ["Select a team to join:"]
tellraw @s [{"text":"[Hunters]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hnr.hunters.join"},"hoverEvent":{"action":"show_text","value":{"text":"Join Hunters","color":"aqua"}}}]
tellraw @s [{"text":"[Runners]","color":"red", "clickEvent":{"action":"run_command","value":"/trigger hnr.runners.join"},"hoverEvent":{"action":"show_text","value":{"text":"Join Runners","color":"red" }}}]
tellraw @s [" "]

#> List our settings
tellraw @s [{"text":"===== Settings =====","color":"gold"}]

execute if score show_previous_pos hnr.settings matches 1 run tellraw @s [{"text":"Show Runners last known position: ","hoverEvent":{"action":"show_text","value":{"text":"Show where the runner last was before they changed dimensions"}}},{"text":"[true]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/show_previous_position"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score show_previous_pos hnr.settings matches 0 run tellraw @s [{"text":"Show Runners last known position: ","hoverEvent":{"action":"show_text","value":{"text":"Show where the runner last was before they changed dimensions"}}},{"text":"[false]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/show_previous_position"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

execute if score rename_compass_to_runner hnr.settings matches 1 run tellraw @s [{"text":"Rename compass to match Runner: ","hoverEvent":{"action":"show_text","value":{"text":"Rename compass to match the Runner currently being tracked"}}},{"text":"[true]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/rename_compass_to_runner"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score rename_compass_to_runner hnr.settings matches 0 run tellraw @s [{"text":"Rename compass to match Runner: ","hoverEvent":{"action":"show_text","value":{"text":"Rename compass to match the Runner currently being tracked"}}},{"text":"[false]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/rename_compass_to_runner"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

execute if score runners_should_glow hnr.settings matches 1 run tellraw @s [{"text":"Nearby Runners should glow: ","hoverEvent":{"action":"show_text","value":{"text":"Apply glow effect to Runners when within 15 blocks of a Hunter"}}},{"text":"[true]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/runners_should_glow"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score runners_should_glow hnr.settings matches 0 run tellraw @s [{"text":"Nearby Runners should glow: ","hoverEvent":{"action":"show_text","value":{"text":"Apply glow effect to Runners when within 15 blocks of a Hunter"}}},{"text":"[false]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/runners_should_glow"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

execute if score hunters_should_glow hnr.settings matches 1 run tellraw @s [{"text":"Nearby Hunters should glow: ","hoverEvent":{"action":"show_text","value":{"text":"Apply glow effect to Hunters when within 15 blocks of a Runner"}}},{"text":"[true]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/hunters_should_glow"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score hunters_should_glow hnr.settings matches 0 run tellraw @s [{"text":"Nearby Hunters should glow: ","hoverEvent":{"action":"show_text","value":{"text":"Apply glow effect to Hunters when within 15 blocks of a Runner"}}},{"text":"[false]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/hunters_should_glow"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
