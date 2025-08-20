$execute store result score #lb_timer player_timer_tick_scoreboard run data get storage tfm:leaderboard rank[$(rank)].time
execute if score @s player_timer_tick_scoreboard >= #lb_timer player_timer_tick_scoreboard run return -1

$execute store result storage tfm:leaderboard rank[$(rank)].time int 1 run scoreboard players get @s player_timer_tick_scoreboard
execute store result storage tfm:tmp player_info.time_mil int 1 run scoreboard players get @s player_timer_mil
execute store result storage tfm:tmp player_info.time_sec int 1 run scoreboard players get @s player_timer_sec
execute store result storage tfm:tmp player_info.time_min int 1 run scoreboard players get @s player_timer_min

function tfm:leaderboard/insert with storage tfm:tmp player_info

execute store result score #current_loop_rank tfm run data get storage tfm:tmp player_info.rank 1
execute store result storage tfm:tmp player_info.rank_new int 1 run scoreboard players remove #current_loop_rank tfm 1
execute if score #current_loop_rank tfm matches ..-1 run return 1

function tfm:leaderboard/rank_loop with storage tfm:tmp player_info