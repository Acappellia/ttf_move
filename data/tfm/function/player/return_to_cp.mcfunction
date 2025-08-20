execute if score @s player_checkpoint matches 0 run tp @s 7.5 87.0 11.0 -90 0
execute if score @s player_checkpoint matches 1 run tp @s 95.5 92.0 13.0 -90 0
execute if score @s player_checkpoint matches 2 run tp @s 137.5 93.0 33.0 -90 0
execute if score @s player_checkpoint matches 3 run tp @s 162.5 87.0 21.0 -90 0
execute if score @s player_checkpoint matches 4 run tp @s 153.5 88.0 8.0 90 0
execute if score @s player_checkpoint matches 5 run tp @s 130.5 87.0 -11.0 90 0
execute if score @s player_checkpoint matches 6 run tp @s 113.0 102.0 -16.5 180 0
execute if score @s player_checkpoint matches 7 run tp @s 92.5 93.0 -37.0 90 0
execute if score @s player_checkpoint matches 8 run tp @s 91.5 85.0 -22.5 0 0
execute if score @s player_checkpoint matches 9 run tp @s 91.0 92.0 10.5 0 0

tag @s add camera_owner
execute as @e[type=item_display,tag=camera_control,distance=..10] if score @s player_id = @p[tag=camera_owner] player_id at @p[tag=camera_owner] run tp @s ~ ~1.62 ~ 180 0
tag @s remove camera_owner

execute at @s run playsound entity.player.big_fall player @a
effect give @s instant_health 1 9 true