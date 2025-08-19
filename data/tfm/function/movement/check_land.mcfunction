execute unless predicate tfm:on_ground run return -1

execute if score @s player_land_timer matches 10..19 run function tfm:movement/land_small
execute if score @s player_land_timer matches 20..29 run function tfm:movement/land_mid
execute if score @s player_land_timer matches 30..39 run function tfm:movement/land_large
execute if score @s player_land_timer matches 40.. run function tfm:movement/land_huge
scoreboard players set @s player_land_timer 0