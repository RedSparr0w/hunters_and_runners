data modify storage tracking_compass:temp Items[] set from entity @s Inventory[{id:"minecraft:compass",tag:{display:{Name:'{"text":"tracking compass"}'}}}]
data modify storage tracking_compass:temp Items[].tag set value {compass_type:"tracking_device",display:{Name:'[{"text":"Tracking Compass","italic":"false"}]',Lore:['{"text":"Detects players nearby.","color":"gray","italic": false}']},LodestoneTracked:0b}

data modify storage tracking_compass:temp Items[].Slot set value 0b
data modify block 0 1 1 Items[] set from storage tracking_compass:temp Items[]

loot spawn ~ ~1 ~ mine 0 1 1 air{drop_contents:1b}
clear @s minecraft:compass{display:{Name:'{"text":"tracking compass"}'}}

data remove storage tracking_compass:temp Items
