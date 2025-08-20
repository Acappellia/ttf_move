$execute if block ~-0.3 ~-$(digit_1000).$(digit_100)$(digit_10)$(digit_1) ~-0.3 #air \
if block ~-0.3 ~-$(digit_1000).$(digit_100)$(digit_10)$(digit_1) ~0.3 #air \
if block ~0.3 ~-$(digit_1000).$(digit_100)$(digit_10)$(digit_1) ~-0.3 #air \
if block ~0.3 ~-$(digit_1000).$(digit_100)$(digit_10)$(digit_1) ~0.3 #air run return -1

scoreboard players set @s player_allow_double_jump 0