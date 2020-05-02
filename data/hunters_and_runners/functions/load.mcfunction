#> Load the chunk our shulker box and sign is in and surround it with bedrock
forceload add 0 0
fill -1 1 2 1 3 0 minecraft:bedrock
setblock 0 1 1 minecraft:shulker_box
setblock 0 2 1 minecraft:crimson_sign

#> Create scoreboard for player info
scoreboard objectives add hnr.xpos dummy
scoreboard objectives add hnr.ypos dummy
scoreboard objectives add hnr.zpos dummy
scoreboard objectives add hnr.runners.hp health

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
function hunters_and_runners:settings/load

#> Show information to non hunter/runners
execute as @a[team=!runners,team=!hunters] run function hunters_and_runners:information

#> Start tracking/updating compasses
function hunters_and_runners:long_tick
