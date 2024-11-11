//update mini map
instance_deactivate_object(obj_mini_map_block)
for (i = 0; i < global.room_size*2 -1; i++)
{
	for (j = 0; j < global.room_size*2 -1; j++)
	{
		if global.church_layout[i][j] == 1
		{
			if global.room_data[i][j].occupied == 1
			{
				var instance = instance_create_layer(j*16 -(7*16),i*16 -(7*16),"instances",obj_mini_map_block)
				with(instance)
				{
					image_index = 1
				}
			}			
			
			if global.room_data[i][j].active_fire_level != 0
			{				
				
				
				switch (global.room_data[i][j].active_fire_level)
				{
						case 1:
							var instance = instance_create_layer(j*16-(7*16),i*16 - (7*16),"instances",obj_mini_map_block)
							with(instance)
							{
								image_index = 3					
							}							
						break;
						case 2:
							var instance = instance_create_layer(j*16-(7*16),i*16 - (7*16),"instances",obj_mini_map_block)
							with(instance)
							{
								image_index = 4					
							}							
						break;
						case 3:
							var instance = instance_create_layer(j*16-(7*16),i*16 - (7*16),"instances",obj_mini_map_block)
							with(instance)
							{
								image_index = 5					
							}							
						break;
						default:
							var instance = instance_create_layer(j*16-(7*16),i*16 - (7*16),"instances",obj_mini_map_block)
							with(instance)
							{
								image_index = 5					
							}	
						
				}
				
			}
			if global.room_data[i][j].fountain_room == 1
			{
				var instance = instance_create_layer(j*16-(7*16),i*16 - (7*16),"instances",obj_mini_map_block)
				with(instance)
				{
					image_index = 2
				}
			}
			if global.room_data[i][j].occupied == 0
			{
				var instance = instance_create_layer(j*16-(7*16),i*16 -(7*16),"instances",obj_mini_map_block)
				with(instance)
				{
					image_index = 0
				}
			}
			
					
		}
	}	
}






