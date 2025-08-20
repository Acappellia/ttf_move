scoreboard players set @s player_timer_mil 0
scoreboard players set @s player_timer_min 0
scoreboard players set @s player_timer_sec 0
scoreboard players set @s player_timer_tick 0
scoreboard players set @s player_timer_tick_scoreboard 0

tag @s add in_race

playsound block.note_block.bell

scoreboard players set @s player_checkpoint 1

tellraw @s [{text:"[",color:"gray"},{text:"TFG",color:"blue"},{text:"] ",color:"gray"},{text:"Timer Start!",color:"yellow"}]