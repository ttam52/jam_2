/// @description Insert description here
// You can write your code in this editor
if fire_health == 0
{
	instance_destroy()
}

direction = point_direction(x,y,obj_mc.x,obj_mc.y)
motion_set(direction,1)
