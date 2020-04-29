#> Creates hnr:compass storage & overwrites pulled item nbt
execute in minecraft:overworld run data modify storage hnr:compass Items[] set from entity @s Inventory[{tag:{compass_type:"tracking_device"}}]
execute in minecraft:overworld run data modify storage hnr:compass Items[].Slot set value 0b

#> Set dimension to a different dimension than we are currently in
execute if entity @s[team=hunters,nbt={Dimension:0}] run data modify storage hnr:compass Items[].tag.LodestoneDimension set value "minecraft:the_nether"
execute unless entity @s[team=hunters,nbt={Dimension:0}] run data modify storage hnr:compass Items[].tag.LodestoneDimension set value "minecraft:overworld"

# modifies shulker box (at 0 1 1) Items[] tag from hnr:compass storage
execute in minecraft:overworld run data modify block 0 1 1 Items[] set from storage hnr:compass Items[]

#> checks and replaces item "tracking_compass" in offhand, mainhand and last hotbar slot, updating LodestonePos.AXIS
execute in minecraft:overworld run loot replace entity @s[nbt={SelectedItem:{tag:{compass_type:"tracking_device"}}}] weapon.mainhand mine 0 1 1 air{drop_contents:1b}
execute in minecraft:overworld run loot replace entity @s[nbt={Inventory:[{Slot:-106b,tag:{compass_type:"tracking_device"}}]}] weapon.offhand mine 0 1 1 air{drop_contents:1b}
execute in minecraft:overworld run loot replace entity @s[nbt={Inventory:[{Slot:8b,tag:{compass_type:"tracking_device"}}]}] hotbar.8 mine 0 1 1 air{drop_contents:1b}

#> removal of Items[] tags in both storage and block (at 0 1 1)
execute in minecraft:overworld run data remove storage hnr:compass Items
execute in minecraft:overworld run data remove block 0 1 1 Items
