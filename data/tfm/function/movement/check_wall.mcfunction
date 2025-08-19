execute unless block ^-0.8 ^0.1 ^ #tfm:wallrun_block unless block ^0.8 ^0.1 ^ #tfm:wallrun_block run return run function tfm:player/reset_wall_attribute

execute if block ^-0.8 ^0.1 ^ #tfm:wallrun_block if score @s player_land_timer matches 2.. run scoreboard players set @s camera_rotation -700
execute if block ^0.8 ^0.1 ^ #tfm:wallrun_block if score @s player_land_timer matches 2.. run scoreboard players set @s camera_rotation 700
attribute @s gravity base set 0.02
attribute @s jump_strength base set 0.25

execute unless predicate tfm:on_ground run playsound block.grass.step player @s ~ ~ ~ 0.5 2

execute if score @s player_wallride_timer matches 5.. if score @s player_land_timer matches 2.. run effect give @s levitation 1 0 true
scoreboard players set @s player_wallride_timer 0