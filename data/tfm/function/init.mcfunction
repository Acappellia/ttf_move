gamerule fallDamage false

scoreboard objectives add tfm dummy
scoreboard players set #-1 tfm -1
scoreboard players set #3 tfm 3
scoreboard players set #2 tfm 2
scoreboard players set #10 tfm 10
scoreboard players set #100 tfm 100
scoreboard players set #1000 tfm 1000

scoreboard objectives add player_id dummy
execute unless score #current_pid player_id matches 0.. run scoreboard players set #current_pid player_id 0

scoreboard objectives add camera_hmove dummy
scoreboard objectives add camera_vmove dummy
scoreboard objectives add camera_rotation dummy

scoreboard objectives add player_land_timer custom:time_since_death
scoreboard objectives add player_wallride_timer custom:time_since_death
scoreboard objectives add player_double_jump_cd dummy
scoreboard objectives add player_jump_pressed dummy
scoreboard objectives add player_double_jump_gravity_reset_cd custom:time_since_death
scoreboard objectives add player_double_jump_init_speed dummy

scoreboard objectives add player_wall_jump_cd_xm custom:time_since_death
scoreboard objectives add player_wall_jump_cd_xp custom:time_since_death
scoreboard objectives add player_wall_jump_cd_zm custom:time_since_death
scoreboard objectives add player_wall_jump_cd_zp custom:time_since_death