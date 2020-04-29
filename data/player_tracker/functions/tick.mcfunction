execute as @a[scores={hnr.hunters.join=1..}] run function player_tracker:teams/join_hunters
execute as @a[scores={hnr.runners.join=1..}] run function player_tracker:teams/join_runners
execute as @a[scores={hnr.information=1..}] run function player_tracker:information

scoreboard players enable @a hnr.hunters.join
scoreboard players enable @a hnr.runners.join
scoreboard players enable @a hnr.information
