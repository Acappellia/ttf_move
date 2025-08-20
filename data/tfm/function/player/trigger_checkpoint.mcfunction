execute if entity @s[x=8,y=87,z=5,dx=0,dy=10,dz=11] unless score @s player_checkpoint matches 0 run function tfm:race/quit
execute if entity @s[x=96,y=92,z=11,dx=0,dy=10,dz=5] unless score @s player_checkpoint matches 1 run function tfm:race/start
execute if entity @s[x=138,y=93,z=31,dx=0,dy=10,dz=3] unless score @s player_checkpoint matches 2 run function tfm:race/checkpoint/2
execute if entity @s[x=152,y=88,z=6,dx=0,dy=10,dz=3] unless score @s player_checkpoint matches 3 run function tfm:race/checkpoint/3
execute if entity @s[x=111,y=102,z=-18,dx=3,dy=10,dz=0] unless score @s player_checkpoint matches 4 run function tfm:race/checkpoint/4
execute if entity @s[x=88,y=92,z=9,dx=5,dy=10,dz=0] unless score @s player_checkpoint matches 5 run function tfm:race/end
