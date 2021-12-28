#> Load the chunk our shulker box and sign is in and surround it with bedrock
forceload add 0 0
fill -1 -63 2 1 -61 0 minecraft:bedrock
setblock 0 -63 1 minecraft:shulker_box
setblock 0 -62 1 minecraft:crimson_sign

#> Create scoreboards for player info
##> Settings
scoreboard objectives add hnr.settings dummy
##> Runner positions
scoreboard objectives add hnr.xpos dummy
scoreboard objectives add hnr.ypos dummy
scoreboard objectives add hnr.zpos dummy
##> Runner death event
scoreboard objectives add hnr.runners.hp health
##> Total players in each team
scoreboard objectives add hnr.teams.amount dummy
##> Dummy scoreboard for temp variables
scoreboard objectives add hnr.dummy dummy

#> Add triggers
##> Show the menu
scoreboard objectives add hnr.information trigger
##> Join the Hunters team
scoreboard objectives add hnr.hunters.join trigger
##> Join the Runners team
scoreboard objectives add hnr.runners.join trigger
##> Tracking specific Runners
scoreboard objectives add hnr.tracking_id trigger

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
