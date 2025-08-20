scoreboard players add @s player_timer_tick_scoreboard 1

execute if score @s player_timer_tick matches 20.. run scoreboard players add @s player_timer_sec 1
execute if score @s player_timer_tick matches 20.. run scoreboard players set @s player_timer_tick 0

execute if score @s player_timer_sec matches 60.. run scoreboard players add @s player_timer_min 1
execute if score @s player_timer_sec matches 60.. run scoreboard players set @s player_timer_sec 0

scoreboard players operation @s player_timer_mil = @s player_timer_tick
scoreboard players operation @s player_timer_mil *= #5 tfm

execute if score @s player_show_timer_cd matches ..-1 run return -1

execute if score @s player_timer_mil matches ..9 if score @s player_timer_sec matches ..9 run title @s actionbar [{score:{name:"@s",objective:"player_timer_min"},color:"yellow"},{text:":",color:"white"},{text:"0",color:"yellow"},{score:{name:"@s",objective:"player_timer_sec"},color:"yellow"},{text:":",color:"white"},{text:"0",color:"yellow"},{score:{name:"@s",objective:"player_timer_mil"},color:"yellow"}]
execute if score @s player_timer_mil matches ..9 if score @s player_timer_sec matches 10.. run title @s actionbar [{score:{name:"@s",objective:"player_timer_min"},color:"yellow"},{text:":",color:"white"},{score:{name:"@s",objective:"player_timer_sec"},color:"yellow"},{text:":",color:"white"},{text:"0",color:"yellow"},{score:{name:"@s",objective:"player_timer_mil"},color:"yellow"}]

execute if score @s player_timer_mil matches 10.. if score @s player_timer_sec matches ..9 run title @s actionbar [{score:{name:"@s",objective:"player_timer_min"},color:"yellow"},{text:":",color:"white"},{text:"0",color:"yellow"},{score:{name:"@s",objective:"player_timer_sec"},color:"yellow"},{text:":",color:"white"},{score:{name:"@s",objective:"player_timer_mil"},color:"yellow"}]
execute if score @s player_timer_mil matches 10.. if score @s player_timer_sec matches 10.. run title @s actionbar [{score:{name:"@s",objective:"player_timer_min"},color:"yellow"},{text:":",color:"white"},{score:{name:"@s",objective:"player_timer_sec"},color:"yellow"},{text:":",color:"white"},{score:{name:"@s",objective:"player_timer_mil"},color:"yellow"}]