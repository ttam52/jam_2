/// @description Insert description here
// You can write your code in this editor
event_inherited();
motion_set(direction,0.1)
if (distance_to_object(obj_mc) < 150)
{
	speed = 0
	if (shooting_flag == 0)
	{
		instance_create_layer(x,y,"Instances",obj_fire_projectile)
		shooting_flag = 1
		alarm_set(1,100)
	}
}
else 
{
	speed = 0.1
}
