$execute store result score #lb_timer player_timer_tick_scoreboard run data get storage tfm:leaderboard rank[$(rank_new)].time
execute if score @s player_timer_tick_scoreboard >= #lb_timer player_timer_tick_scoreboard run return 1

$data modify storage tfm:tmp tmp_rank set from storage tfm:leaderboard rank[$(rank)]
$data remove storage tfm:leaderboard rank[$(rank)]
$data modify storage tfm:leaderboard rank insert $(rank_new) from storage tfm:tmp tmp_rank

data modify storage tfm:tmp player_info.rank set from storage tfm:tmp player_info.rank_new
execute store result storage tfm:tmp player_info.rank_new int 1 run scoreboard players remove #current_loop_rank tfm 1
execute if score #current_loop_rank tfm matches ..-1 run return 1

function tfm:leaderboard/rank_loop with storage tfm:tmp player_info