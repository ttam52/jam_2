/// @description Insert description here
// You can write your code in this editor
if fire_health == 0
{
	instance_destroy()
}

direction = point_direction(x,y,obj_mc.x,obj_mc.y)
motion_set(direction,1)

if (distance_to_object(obj_mc) < 10)
{
	instance_create_layer(x,y+30,"Instances",obj_fire)
	instance_create_layer(x+20,y-10,"Instances",obj_fire)
	instance_create_layer(x-20,y-10,"Instances",obj_fire)
	instance_destroy()
}