execute unless entity @e[tag=target] run tag @s add tracking_players
execute as @s at @s as @a[tag=!tracking_players,distance=..1000] run tag @s add target

execute if entity @e[tag=target] run tag @s remove tracking_players
execute as @s at @s as @a[tag=target,distance=1001..] run tag @s remove target
