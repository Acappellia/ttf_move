execute if predicate tfm:fall/small run scoreboard players set @s player_fall_distance 1
execute if predicate tfm:fall/mid run scoreboard players set @s player_fall_distance 2
execute if predicate tfm:fall/large run scoreboard players set @s player_fall_distance 3
execute if predicate tfm:fall/huge run scoreboard players set @s player_fall_distance 4

execute unless predicate tfm:on_ground run return run function tfm:movement/set_attr_inair
#execute if score @s player_land_timer matches 2.. run attribute @s jump_strength base set 0.5
#execute if score @s player_land_timer matches 2.. run scoreboard players set @s player_allow_jump 1

execute if score @s player_fall_distance matches 1 run function tfm:movement/land_small
execute if score @s player_fall_distance matches 2 run function tfm:movement/land_mid
execute if score @s player_fall_distance matches 3 run function tfm:movement/land_large
execute if score @s player_fall_distance matches 4 run function tfm:movement/land_huge
scoreboard players set @s player_fall_distance 0