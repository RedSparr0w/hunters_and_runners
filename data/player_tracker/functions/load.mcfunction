#> Load the chunk our shulker box is in
#> Load the chunk our shulker box and sign is in
forceload add 0 0
setblock 0 1 1 minecraft:shulker_box

#> Create scoreboard for player info
scoreboard objectives add hnr.xpos dummy
scoreboard objectives add hnr.ypos dummy
scoreboard objectives add hnr.zpos dummy

#> Add triggers
scoreboard objectives add hnr.hunters.join trigger
scoreboard objectives add hnr.runners.join trigger
scoreboard objectives add hnr.information trigger

#> Add teams
team add hunters
team modify hunters color aqua
team add runners
team modify runners color red

#> Load default settings
function player_tracker:settings/load

#> Show information to non hunter/runners
execute as @a[team=!runners,team=!hunters] run function player_tracker:information

#> Start tracking/updating compasses
function player_tracker:long_tick
