execute as @a[scores={hnr.hunters.join=1..}] run function hunters_and_runners:hunters/join_team
execute as @a[scores={hnr.runners.join=1..}] run function hunters_and_runners:runners/join_team
execute as @a[scores={hnr.information=1..}] run function hunters_and_runners:information

scoreboard players enable @a hnr.hunters.join
scoreboard players enable @a hnr.runners.join
scoreboard players enable @a hnr.information
