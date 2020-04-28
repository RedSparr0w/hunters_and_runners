execute store result score @s xpos run data get entity @s Pos[0]
execute store result score @s ypos run data get entity @s Pos[1]
execute store result score @s zpos run data get entity @s Pos[2]

# tellraw @a [{"selector":"@s","color": "blue"},{"text": " X axis is: ","color": "green"},{"score": {"name": "@s","objective": "xpos"},"color":"yellow"}]
# tellraw @a [{"selector":"@s","color": "blue"},{"text": " Y axis is: ","color": "green"},{"score": {"name": "@s","objective": "ypos"},"color":"yellow"}]
# tellraw @a [{"selector":"@s","color": "blue"},{"text": " Z axis is: ","color": "green"},{"score": {"name": "@s","objective": "zpos"},"color":"yellow"}]
