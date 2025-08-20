scoreboard players reset #personal_record_found tfm

$execute store success score #personal_record_found tfm if data storage tfm:leaderboard ranked_players.player_$(id)
execute unless score #personal_record_found tfm matches 1.. run return -1

$data modify storage tfm:tmp player_info.rank set from storage tfm:leaderboard ranked_players.player_$(id)
function tfm:leaderboard/check_time with storage tfm:tmp player_info
function tfm:leaderboard/update_person_record
function tfm:leaderboard/reset_word