kill @e[type=item_display,tag=camera_control]

scoreboard objectives remove player_id
scoreboard objectives add player_id dummy
scoreboard players set #current_pid player_id 0