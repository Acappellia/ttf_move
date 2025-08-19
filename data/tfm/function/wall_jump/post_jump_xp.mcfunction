scoreboard players set @s player_wall_jump_cd_xp -30

execute store result score @s camera_vmove run random value 400..600
execute store result score @s camera_hmove run random value -200..200
execute store result score @s camera_rotation run random value -200..200