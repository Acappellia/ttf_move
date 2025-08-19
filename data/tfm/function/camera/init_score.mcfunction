data merge entity @s {Tags:["camera_control"],item:{id:"apple",count:1,components:{item_model:"camera_tilt"}},Rotation:[180,0]}

scoreboard players set @s camera_hmove 0
scoreboard players set @s camera_vmove 0
scoreboard players set @s camera_rotation 0

scoreboard players operation @s player_id = @p[tag=camera_summoner,distance=..1] player_id