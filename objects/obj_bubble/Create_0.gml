/// @description Insert description here
// You can write your code in this editor
bubble_speed = 4
direction = point_direction(x,y,mouse_x,mouse_y)
direction += random_range(-10,10)
target_direction = direction
scale = random_range(0.5,0.8)
image_xscale = scale
image_yscale = scale
motion_set(direction,bubble_speed)
alarm_set(0,150)