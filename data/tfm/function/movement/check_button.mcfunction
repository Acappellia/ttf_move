execute if predicate tfm:input_jump if score @s player_jump_pressed matches ..0 run scoreboard players set @s player_jump_pressed 0
execute if predicate tfm:input_jump run return run scoreboard players add @s player_jump_pressed 1

execute if score @s player_jump_pressed matches 1.. run scoreboard players set @s player_jump_pressed 0
scoreboard players remove @s player_jump_pressed 1