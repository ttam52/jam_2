/// @description Insert description here
// You can write your code in this editor
event_inherited();
motion_set(direction,0.1)
if (distance_to_object(obj_mc) < 150)
{

	if (shooting_flag == 0)
	{
		var instance = instance_create_layer(x,y,"Instances",obj_fire_projectile)
		with instance
		{
			direction = point_direction(x,y,obj_mc.x,obj_mc.y)
		}
		
		shooting_flag = 1
		alarm_set(1,100)
	}
}
else 
{
	speed = 0.1
}
