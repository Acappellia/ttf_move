scoreboard players set @s player_double_jump_cd -1

execute store result score @s camera_vmove run random value 400..600
execute store result score @s camera_hmove run random value -200..200
execute store result score @s camera_rotation run random value -200..200

scoreboard players reset @s player_allow_double_jump