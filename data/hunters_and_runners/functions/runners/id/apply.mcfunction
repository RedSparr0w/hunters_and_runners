scoreboard players add @a[team=runners,tag=!checked] hnr.tracking_id 1
tag @a[team=runners,tag=!checked,limit=1,sort=arbitrary] add checked

execute if entity @a[team=runners,tag=!checked] run function hunters_and_runners:runners/id/apply
