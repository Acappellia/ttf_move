execute unless score @s player_checkpoint matches 4 run return -1

tag @s remove in_race

playsound block.note_block.bell

execute if score @s player_timer_mil matches ..9 if score @s player_timer_sec matches ..9 run title @s actionbar [{text:"Finished! ",color:"gold",bold:true},{score:{name:"@s",objective:"player_timer_min"},color:"yellow"},{text:":",color:"white"},{text:"0",color:"yellow"},{score:{name:"@s",objective:"player_timer_sec"},color:"yellow"},{text:":",color:"white"},{text:"0",color:"yellow"},{score:{name:"@s",objective:"player_timer_mil"},color:"yellow"}]
execute if score @s player_timer_mil matches ..9 if score @s player_timer_sec matches 10.. run title @s actionbar [{text:"Finished! ",color:"gold",bold:true},{score:{name:"@s",objective:"player_timer_min"},color:"yellow"},{text:":",color:"white"},{score:{name:"@s",objective:"player_timer_sec"},color:"yellow"},{text:":",color:"white"},{text:"0",color:"yellow"},{score:{name:"@s",objective:"player_timer_mil"},color:"yellow"}]

execute if score @s player_timer_mil matches 10.. if score @s player_timer_sec matches ..9 run title @s actionbar [{text:"Finished! ",color:"gold",bold:true},{score:{name:"@s",objective:"player_timer_min"},color:"yellow"},{text:":",color:"white"},{text:"0",color:"yellow"},{score:{name:"@s",objective:"player_timer_sec"},color:"yellow"},{text:":",color:"white"},{score:{name:"@s",objective:"player_timer_mil"},color:"yellow"}]
execute if score @s player_timer_mil matches 10.. if score @s player_timer_sec matches 10.. run title @s actionbar [{text:"Finished! ",color:"gold",bold:true},{score:{name:"@s",objective:"player_timer_min"},color:"yellow"},{text:":",color:"white"},{score:{name:"@s",objective:"player_timer_sec"},color:"yellow"},{text:":",color:"white"},{score:{name:"@s",objective:"player_timer_mil"},color:"yellow"}]

scoreboard players set @s player_checkpoint 5