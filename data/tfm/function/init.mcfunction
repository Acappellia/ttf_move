gamerule fallDamage false

scoreboard objectives add tfm dummy
scoreboard players set #-1 tfm -1
scoreboard players set #2 tfm 2
scoreboard players set #3 tfm 3
scoreboard players set #4 tfm 4
scoreboard players set #5 tfm 5
scoreboard players set #10 tfm 10
scoreboard players set #100 tfm 100
scoreboard players set #1000 tfm 1000

scoreboard objectives add player_id dummy
execute unless score #current_pid player_id matches 0.. run scoreboard players set #current_pid player_id 0

scoreboard objectives add camera_hmove dummy
scoreboard objectives add camera_vmove dummy
scoreboard objectives add camera_rotation dummy

scoreboard objectives add player_fall_distance dummy
scoreboard objectives add player_land_timer custom:time_since_death
scoreboard objectives add player_wallride_timer custom:time_since_death
scoreboard objectives add player_double_jump_cd dummy
scoreboard objectives add player_jump_pressed dummy
scoreboard objectives add player_double_jump_gravity_reset_cd custom:time_since_death
scoreboard objectives add player_double_jump_init_speed dummy
scoreboard objectives add player_allow_double_jump dummy

scoreboard objectives add player_wall_jump_cd_xm custom:time_since_death
scoreboard objectives add player_wall_jump_cd_xp custom:time_since_death
scoreboard objectives add player_wall_jump_cd_zm custom:time_since_death
scoreboard objectives add player_wall_jump_cd_zp custom:time_since_death

scoreboard objectives add player_checkpoint dummy
scoreboard objectives add player_timer_tick custom:time_since_death
scoreboard objectives add player_timer_mil dummy
scoreboard objectives add player_timer_sec dummy
scoreboard objectives add player_timer_min dummy
scoreboard objectives add player_show_timer_cd custom:time_since_death
scoreboard objectives add player_health health

scoreboard objectives add player_timer_tick_scoreboard dummy "Timer"

team add player
team modify player friendlyFire false
team modify player collisionRule never
team modify player seeFriendlyInvisibles true
team modify player deathMessageVisibility never


schedule function tfm:slow_tick 40t append