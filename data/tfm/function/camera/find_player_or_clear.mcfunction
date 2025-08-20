scoreboard players operation #tmp_id player_id = @s player_id
execute as @a if score @s player_id = #tmp_id player_id run tag @s add camera_owner
execute unless entity @a[tag=camera_owner] run return run kill @s
execute at @p[tag=camera_owner] run tp @s ~ ~ ~ 180 0
tag @a remove camera_owner