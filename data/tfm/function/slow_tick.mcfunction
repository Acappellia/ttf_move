execute as @e[type=item_display,tag=camera_control] at @s unless entity @p[distance=..2] run function tfm:camera/find_player_or_clear
execute as @a at @s unless entity @n[type=item_display,tag=camera_control,distance=..2] run function tfm:camera/summon

schedule function tfm:slow_tick 40t replace