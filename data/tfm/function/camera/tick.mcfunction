data modify storage tfm:tmp camera_rotation set value [0,0,0,7000]
execute store result storage tfm:tmp camera_rotation[0] int 1 run scoreboard players get @s camera_vmove
execute store result storage tfm:tmp camera_rotation[1] int 1 run scoreboard players get @s camera_hmove
execute store result storage tfm:tmp camera_rotation[2] int 1 run scoreboard players get @s camera_rotation
execute as @e[type=item_display,tag=camera_control,distance=..10] if score @s player_id = @p[distance=..1] player_id run function tfm:camera/camera_update

scoreboard players operation @s camera_vmove /= #3 tfm
scoreboard players operation @s camera_vmove *= #2 tfm

scoreboard players operation @s camera_hmove /= #3 tfm
scoreboard players operation @s camera_hmove *= #2 tfm

scoreboard players operation @s camera_rotation /= #3 tfm
scoreboard players operation @s camera_rotation *= #2 tfm