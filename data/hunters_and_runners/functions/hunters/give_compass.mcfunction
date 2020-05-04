#> Give the hunters a compass to track players
execute if data entity @s Inventory[{Slot:8b}] run give @s minecraft:compass{compass_type:"tracking_device",display:{Name:'[{"text":"Tracking Compass","italic":"false"}]',Lore:['{"text":"Detects players nearby.","color":"gray","italic": false}']},LodestoneTracked:0b}
execute unless data entity @s Inventory[{Slot:8b}] run replaceitem entity @s hotbar.8 minecraft:compass{compass_type:"tracking_device",Enchantments:[{lvl:1,id:"minecraft:vanishing_curse"}],display:{Name:'[{"text":"Tracking Compass","italic":"false"}]',Lore:['{"text":"Detects players nearby.","color":"gray","italic": false}']},LodestoneTracked:0b}

tellraw @s [{"text":"===== Select Runner to track =====","color":"gold"}]
tellraw @s [{"text":"[Nearest Runner]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hnr.tracking_id set 0"},"hoverEvent":{"action":"show_text","value":{"text":"Track the nearest runner!"}}}]
execute if entity @a[team=runners,scores={hnr.tracking_id=1}] run tellraw @s [{"text":"[Track] - ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hnr.tracking_id set 1"},"hoverEvent":{"action":"show_text","value":{"text":"Track this runner!"}}},{"selector":"@a[team=runners,scores={hnr.tracking_id=1}]"}]
execute if entity @a[team=runners,scores={hnr.tracking_id=2}] run tellraw @s [{"text":"[Track] - ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hnr.tracking_id set 2"},"hoverEvent":{"action":"show_text","value":{"text":"Track this runner!"}}},{"selector":"@a[team=runners,scores={hnr.tracking_id=2}]"}]
execute if entity @a[team=runners,scores={hnr.tracking_id=3}] run tellraw @s [{"text":"[Track] - ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hnr.tracking_id set 3"},"hoverEvent":{"action":"show_text","value":{"text":"Track this runner!"}}},{"selector":"@a[team=runners,scores={hnr.tracking_id=3}]"}]
execute if entity @a[team=runners,scores={hnr.tracking_id=4}] run tellraw @s [{"text":"[Track] - ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hnr.tracking_id set 4"},"hoverEvent":{"action":"show_text","value":{"text":"Track this runner!"}}},{"selector":"@a[team=runners,scores={hnr.tracking_id=4}]"}]
execute if entity @a[team=runners,scores={hnr.tracking_id=5}] run tellraw @s [{"text":"[Track] - ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hnr.tracking_id set 5"},"hoverEvent":{"action":"show_text","value":{"text":"Track this runner!"}}},{"selector":"@a[team=runners,scores={hnr.tracking_id=5}]"}]
execute if entity @a[team=runners,scores={hnr.tracking_id=6}] run tellraw @s [{"text":"[Track] - ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hnr.tracking_id set 6"},"hoverEvent":{"action":"show_text","value":{"text":"Track this runner!"}}},{"selector":"@a[team=runners,scores={hnr.tracking_id=6}]"}]
execute if entity @a[team=runners,scores={hnr.tracking_id=7}] run tellraw @s [{"text":"[Track] - ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hnr.tracking_id set 7"},"hoverEvent":{"action":"show_text","value":{"text":"Track this runner!"}}},{"selector":"@a[team=runners,scores={hnr.tracking_id=7}]"}]
execute if entity @a[team=runners,scores={hnr.tracking_id=8}] run tellraw @s [{"text":"[Track] - ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hnr.tracking_id set 8"},"hoverEvent":{"action":"show_text","value":{"text":"Track this runner!"}}},{"selector":"@a[team=runners,scores={hnr.tracking_id=8}]"}]
execute if entity @a[team=runners,scores={hnr.tracking_id=9}] run tellraw @s [{"text":"[Track] - ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hnr.tracking_id set 9"},"hoverEvent":{"action":"show_text","value":{"text":"Track this runner!"}}},{"selector":"@a[team=runners,scores={hnr.tracking_id=9}]"}]
