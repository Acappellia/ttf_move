execute store result score @s player_id run scoreboard players add #current_pid player_id 1
scoreboard players set @s player_checkpoint 0
team join player
function tfm:camera/summon
function tfm:player/wear_boots