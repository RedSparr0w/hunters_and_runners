execute as @a[scores={hunters.join=1..}] run function player_tracker:teams/join_hunters
execute as @a[scores={runners.join=1..}] run function player_tracker:teams/join_runners

scoreboard players enable @a hunters.join
scoreboard players enable @a runners.join
