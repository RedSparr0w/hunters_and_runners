function player_tracker:tracking_system/target

function player_tracker:compass/start
function player_tracker:compass/import_pos/tick

function player_tracker:detect_players/start

execute as @a[scores={hunters.join=1..}] run function player_tracker:teams/join_hunters
execute as @a[scores={runners.join=1..}] run function player_tracker:teams/join_runners
