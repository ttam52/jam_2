if room != rm_main
{

alarm_set(0,1)


switch global.player_spawn_direction
{
	case 1:
		instance_create_layer(256,32,"Instances",obj_mc)
	break;
	case 2:
		instance_create_layer(256,480,"Instances",obj_mc)
	break;
	case 3:
		instance_create_layer(32,256,"Instances",obj_mc)
	break;
	case 4:
		instance_create_layer(480,256,"Instances",obj_mc)
	break;
}
instance_create_layer(256,256,"instances",obj_water_indicator)

if global.room_data[global.coordinates.a][global.coordinates.b].fountain_room == 1
{
	instance_create_layer(256,256,"Instances",obj_water_refill)
}

for (i = 1; i < 5; i++)
{
	if string_char_at(global.room_data[global.coordinates.a][global.coordinates.b].doors_connected,i) == "Y"
	{
		switch i
		{
			case 1:
				instance_create_layer(256,0,"Instances",obj_door)
			break;
			case 2:
				instance_create_layer(256,512,"Instances",obj_door)
			break;
			case 3:
				instance_create_layer(0,256,"Instances",obj_door)
			break;
			case 4:
				instance_create_layer(512,256,"Instances",obj_door)
			break;
		}
	}
}


for (i = 1; i<global.room_enemies[global.coordinates.a][global.coordinates.b].amount+1; i++)
	{
	show_debug_message("working")
	enemy_x = global.room_enemies[global.coordinates.a][global.coordinates.b].x_coordinate[i]
	enemy_y = global.room_enemies[global.coordinates.a][global.coordinates.b].y_coordinate[i]
	enemy_type = global.room_enemies[global.coordinates.a][global.coordinates.b].type[i]
	
	instance_create_layer(enemy_x,enemy_y,"Instances",enemy_type)

	}



}






