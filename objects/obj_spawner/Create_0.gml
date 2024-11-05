for (i = 0; i < global.room_size*2 -1; i++)
{
	for (j = 0; j < global.room_size*2 -1; j++)
	{
		if global.church_layout[i][j] == 1
		{
			if global.room_data[i][j].occupied == 0
			{
				instance = instance_create_layer(j*16,i*16,"instances",obj_mini_map_block)
				with(instance)
				{
					image_index = 0
				}
			}
			if global.room_data[i][j].active_fire == 1
			{
				instance = instance_create_layer(j*16,i*16,"instances",obj_mini_map_block)
				with(instance)
				{
					image_index = 2
				}
			}
			if global.room_data[i][j].occupied == 1
			{
				instance = instance_create_layer(j*16,i*16,"instances",obj_mini_map_block)
				with(instance)
				{
					image_index = 1
				}
			}
		}
		
	}	
}

if room != rm_main
{
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
}






