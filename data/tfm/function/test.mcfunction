summon minecraft:item_display ~ ~1 ~ {Tags:["camera_control"],item:{id:"apple",count:1,components:{item_model:"camera_tilt"}},Rotation:[180,0]}

data merge entity @n[type=item_display] {interpolation_duration:5,start_interpolation:-1,transformation:{left_rotation:[0,0,100,800]}}
data merge entity @n[type=item_display] {interpolation_duration:5,start_interpolation:-1,transformation:{left_rotation:[0,0,0,800]}}
data merge entity @n[type=item_display] {interpolation_duration:5,start_interpolation:-1,transformation:{left_rotation:[0,0,-100,800]}}