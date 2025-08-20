execute store result score @s player_double_jump_init_speed run data get entity @s Motion[1] 400
execute store result score #digit_1000 player_double_jump_init_speed store result score #digit_1000 tfm run scoreboard players add @s player_double_jump_init_speed 100

scoreboard players set @s player_allow_double_jump 1

execute unless block ~-0.3 ~-0.8 ~-0.3 #air run return run scoreboard players set @s player_allow_double_jump 0
execute unless block ~-0.3 ~-0.8 ~0.3 #air run return run scoreboard players set @s player_allow_double_jump 0
execute unless block ~0.3 ~-0.8 ~-0.3 #air run return run scoreboard players set @s player_allow_double_jump 0
execute unless block ~0.3 ~-0.8 ~0.3 #air run return run scoreboard players set @s player_allow_double_jump 0

execute if score #digit_1000 tfm matches ..-1 run function tfm:double_jump/pre_jump_check_height