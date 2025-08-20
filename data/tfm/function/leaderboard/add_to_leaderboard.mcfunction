execute store result storage tfm:tmp player_info.id int 1 run scoreboard players get @s player_id
data modify storage tfm:tmp player_info.rank set value 14

function tfm:leaderboard/check_personal_record with storage tfm:tmp player_info
execute if score #personal_record_found tfm matches 1.. run return -1

function tfm:leaderboard/check_time with storage tfm:tmp player_info
function tfm:leaderboard/update_person_record
function tfm:leaderboard/reset_word