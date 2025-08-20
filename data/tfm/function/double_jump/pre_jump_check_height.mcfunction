scoreboard players operation #digit_1000 tfm *= #-1 tfm
scoreboard players operation #digit_1000 tfm *= #10 tfm

scoreboard players operation #digit_100 tfm = #digit_1000 tfm
scoreboard players operation #digit_1000 tfm /= #1000 tfm
scoreboard players operation #digit_100 tfm %= #1000 tfm

scoreboard players operation #digit_10 tfm = #digit_100 tfm
scoreboard players operation #digit_100 tfm /= #100 tfm
scoreboard players operation #digit_10 tfm %= #100 tfm

scoreboard players operation #digit_1 tfm = #digit_10 tfm
scoreboard players operation #digit_10 tfm /= #10 tfm
scoreboard players operation #digit_1 tfm %= #10 tfm

execute store result storage tfm:tmp gravity.digit_1000 int 1 run scoreboard players get #digit_1000 tfm
execute store result storage tfm:tmp gravity.digit_100 int 1 run scoreboard players get #digit_100 tfm
execute store result storage tfm:tmp gravity.digit_10 int 1 run scoreboard players get #digit_10 tfm
execute store result storage tfm:tmp gravity.digit_1 int 1 run scoreboard players get #digit_1 tfm

function tfm:double_jump/check_block with storage tfm:tmp gravity