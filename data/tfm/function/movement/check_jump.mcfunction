execute if score @s player_land_timer matches ..1 run return -1
#execute if score @s player_allow_jump matches 0 run return -1
execute unless predicate tfm:input_jump run return -1

execute store result score @s camera_vmove run random value 300..400
execute store result score @s camera_hmove run random value -200..200
execute store result score @s camera_rotation run random value -200..200