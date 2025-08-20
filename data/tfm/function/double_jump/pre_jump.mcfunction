#data modify storage tfm:tmp test set from entity @s Motion
scoreboard players set @s player_double_jump_gravity_reset_cd -3

#kill @e[type=minecraft:text_display,tag=tmp_marker,distance=..50]
#summon text_display ~ ~ ~ {Tags:["tmp_marker"]}

#execute store result score @s player_double_jump_init_speed run data get entity @s Motion[1] 400
#execute store result score #digit_1000 player_double_jump_init_speed run scoreboard players add @s player_double_jump_init_speed 100

data modify storage tfm:tmp gravity.sign set value ""
execute if score #digit_1000 player_double_jump_init_speed matches 1.. run scoreboard players operation #digit_1000 player_double_jump_init_speed *= #2 tfm
execute if score #digit_1000 player_double_jump_init_speed matches ..-1 run data modify storage tfm:tmp gravity.sign set value "-"
execute if score #digit_1000 player_double_jump_init_speed matches ..-1 run scoreboard players operation #digit_1000 player_double_jump_init_speed *= #-1 tfm

scoreboard players operation #digit_100 player_double_jump_init_speed = #digit_1000 player_double_jump_init_speed
scoreboard players operation #digit_1000 player_double_jump_init_speed /= #1000 tfm
scoreboard players operation #digit_100 player_double_jump_init_speed %= #1000 tfm

scoreboard players operation #digit_10 player_double_jump_init_speed = #digit_100 player_double_jump_init_speed
scoreboard players operation #digit_100 player_double_jump_init_speed /= #100 tfm
scoreboard players operation #digit_10 player_double_jump_init_speed %= #100 tfm

scoreboard players operation #digit_1 player_double_jump_init_speed = #digit_10 player_double_jump_init_speed
scoreboard players operation #digit_10 player_double_jump_init_speed /= #10 tfm
scoreboard players operation #digit_1 player_double_jump_init_speed %= #10 tfm

execute store result storage tfm:tmp gravity.digit_1000 int 1 run scoreboard players get #digit_1000 player_double_jump_init_speed
execute store result storage tfm:tmp gravity.digit_100 int 1 run scoreboard players get #digit_100 player_double_jump_init_speed
execute store result storage tfm:tmp gravity.digit_10 int 1 run scoreboard players get #digit_10 player_double_jump_init_speed
execute store result storage tfm:tmp gravity.digit_1 int 1 run scoreboard players get #digit_1 player_double_jump_init_speed

function tfm:double_jump/set_gravity with storage tfm:tmp gravity