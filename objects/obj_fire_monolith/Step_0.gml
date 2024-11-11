/// @description Insert description here
// You can write your code in this editor
if fire_health < 1
{
	instance_destroy()
	global.room_data[global.coordinates.a][global.coordinates.b].active_fire_level --
	global.room_enemies[global.coordinates.a][global.coordinates.b].amount --
	global.room_data[global.coordinates.a][global.coordinates.b].burning_room = 0
}


direction = point_direction(x,y,obj_mc.x,obj_mc.y)
show_debug_message(direction)
if direction >45 && direction < 135
{
	image_index = 0
}
else if direction >135 && direction < 225
{
	image_index = 2
}
else if direction > 225 && direction < 315
{
	image_index = 1
}
else
{
	image_index = 3
}

if attack_stage >=1 && attack_stage < 2
{
	if (shooting_flag == 0)
	{
	var instance = instance_create_layer(x,y,"Instances",obj_fire_projectile)
	with instance
	{
		direction = point_direction(x,y,obj_mc.x,obj_mc.y)
	}

		shooting_flag = 1
		alarm_set(1,15)
	}
}
if attack_stage >= 2
{
	if (shooting_flag == 0)
	{
		var instance = instance_create_layer(x,y,"Instances",obj_fire_projectile)
		with instance
		{
			direction = point_direction(x,y,obj_mc.x,obj_mc.y)
		}
		var instance = instance_create_layer(x,y,"Instances",obj_fire_projectile)
		with instance
		{
			direction = point_direction(x,y,obj_mc.x,obj_mc.y) + 20
		}
		var instance = instance_create_layer(x,y,"Instances",obj_fire_projectile)
		with instance
		{
			direction = point_direction(x,y,obj_mc.x,obj_mc.y) - 20
		}
		shooting_flag = 1
		alarm_set(1,40)
	
	}



}