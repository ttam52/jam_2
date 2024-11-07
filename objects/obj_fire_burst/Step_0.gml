/// @description Insert description here
// You can write your code in this editor
event_inherited();
motion_set(direction,0.5)
if (distance_to_object(obj_mc) < 250)
{
	motion_set(direction, 0)
	if (shooting_flag == 0)
	{
		instance_create_layer(x,y,"Instances",obj_fire_projectile)
		instance_create_layer(x,y-10,"Instances",obj_fire_projectile)
		instance_create_layer(x,y-20,"Instances",obj_fire_projectile)
		instance_create_layer(x,y-30,"Instances",obj_fire_projectile)
		instance_create_layer(x,y-40,"Instances",obj_fire_projectile)
		shooting_flag = 1
		alarm_set(1,100)
	}
}
