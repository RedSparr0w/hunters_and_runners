#> ;creates import:pos storage & overwrites pulled item nbt
data modify storage import:pos Items[] set from entity @s Inventory[{tag:{compass_type:"tracking_device"}}]
data modify storage import:pos Items[].Slot set value 0b

#> dimension limited only to "minecraft:overworld" temporarily
data modify storage import:pos Items[].tag.LodestoneDimension set value "minecraft:overworld"

#> imports xpos, ypos, zpos scores into import:pos{tag.LodestonePos.AXIS} tag
execute store result storage import:pos Items[].tag.LodestonePos.X int 1 run scoreboard players get @e[team=runners,limit=1,sort=nearest] xpos
execute store result storage import:pos Items[].tag.LodestonePos.Y int 1 run scoreboard players get @e[team=runners,limit=1,sort=nearest] ypos
execute store result storage import:pos Items[].tag.LodestonePos.Z int 1 run scoreboard players get @e[team=runners,limit=1,sort=nearest] zpos

# modifies shulker box (at 0 1 1) Items[] tag from import:pos storage
data modify block 0 1 1 Items[] set from storage import:pos Items[]

#> checks and replaces item "tracking_compass" in offhand, mainhand and last hotbar slot, updating LodestonePos.AXIS
loot replace entity @s[nbt={SelectedItem:{tag:{compass_type:"tracking_device"}}}] weapon.mainhand mine 0 1 1 air{drop_contents:1b}
loot replace entity @s[nbt={Inventory:[{Slot:-106b,tag:{compass_type:"tracking_device"}}]}] weapon.offhand mine 0 1 1 air{drop_contents:1b}
loot replace entity @s[nbt={Inventory:[{Slot:8b,tag:{compass_type:"tracking_device"}}]}] hotbar.8 mine 0 1 1 air{drop_contents:1b}

#> removal of Items[] tags in both storage and block (at 0 1 1)
data remove storage import:pos Items
data remove block 0 1 1 Items
