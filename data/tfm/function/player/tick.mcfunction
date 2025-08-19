execute unless score @s player_id matches 1.. run function tfm:player/init

function tfm:movement/check_button

function tfm:movement/check_wall
function tfm:movement/check_jump
function tfm:movement/check_land

execute if score @s player_double_jump_gravity_reset_cd matches 0 run function tfm:double_jump/reset_gravity

function tfm:camera/tick