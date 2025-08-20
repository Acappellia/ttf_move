tag @s remove in_race
playsound block.note_block.bell
title @s actionbar {text:"Timer reset!",color:"gold",bold:true}

scoreboard players set @s player_checkpoint 0
scoreboard players reset @s player_timer_tick_scoreboard

tellraw @s [{text:"[",color:"gray"},{text:"TFP",color:"blue"},{text:"] ",color:"gray"},{text:"Timer Reset",color:"gray"}]