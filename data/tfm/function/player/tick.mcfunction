execute unless score @s player_id matches 1.. run function tfm:player/init

function tfm:movement/check_button

function tfm:movement/check_wall
function tfm:movement/check_jump
function tfm:movement/check_land

execute if score @s player_double_jump_gravity_reset_cd matches 0 run function tfm:double_jump/reset_gravity

function tfm:camera/tick

function tfm:player/trigger_checkpoint
execute if entity @s[y=75,dy=-100] run function tfm:player/return_to_cp
execute if score @s player_health matches ..19 run function tfm:player/return_to_cp

execute if entity @s[tag=in_race] run function tfm:race/tick