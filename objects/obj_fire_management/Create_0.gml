/// @description Insert description here
// You can write your code in this editor
global.fire_spread_ticks = 0
random_int = 0
selected_room_x = 0
selected_room_y = 0

//checks to see how many rooms contain fire
n = 0
function burning_rooms_counter()
{
	for(i = 0; i < global.room_size*2-1; i++)
	{
		for(j = 0; j < global.room_size*2-1; j++)
		{
			if global.room_data[i][j].active_fire_level > 0
			{
				burning_rooms_list[n] =
				{
					coordinate_x : i,
					coordinate_y : j,						
				}
				n++
			}
		}
	}
	random_int = round(random_range(0,n-1))
	selected_room_x = burning_rooms_list[random_int].coordinate_x
	selected_room_y = burning_rooms_list[random_int].coordinate_y
}
function spread_fire()
{
			if(selected_room_x != 0)
			{
				if global.church_layout[selected_room_x-1][selected_room_y] == 1
				{
					global.room_data[selected_room_x-1][selected_room_y].active_fire_level ++
				}					
			}
				
			if(selected_room_x != global.room_size*2 - 2)
			{
				if global.church_layout[selected_room_x+1][selected_room_y] == 1
				{
					global.room_data[selected_room_x+1][selected_room_y].active_fire_level ++					
				}
			}

			if(selected_room_y != 0)
			{
				if global.church_layout[selected_room_x][selected_room_y-1] == 1
				{
					global.room_data[selected_room_x][selected_room_y-1].active_fire_level ++
				}
			}
			if(selected_room_y != global.room_size*2 - 2)
			{
				if global.church_layout[selected_room_x][selected_room_y+1] == 1
				{
					global.room_data[selected_room_x][selected_room_y+1].active_fire_level ++
				}
			}
}

function check_surrounding_rooms()
{
	surrounding_rooms = 0
	burning_rooms = 0
			if(selected_room_x != 0)
			{
				if global.church_layout[selected_room_x-1][selected_room_y] == 1
				{
					surrounding_rooms++					
					if global.room_data[selected_room_x-1][selected_room_y].active_fire_level != 0
					{
						burning_rooms++
					}
				}					
			}
				
			if(selected_room_x != global.room_size*2 - 2)
			{
				if global.church_layout[selected_room_x+1][selected_room_y] == 1
				{
					surrounding_rooms++					
					if global.room_data[selected_room_x+1][selected_room_y].active_fire_level != 0
					{
						burning_rooms++
					}
				}
			}

			if(selected_room_y != 0)
			{
				if global.church_layout[selected_room_x][selected_room_y-1] == 1
				{
					surrounding_rooms++					
					if global.room_data[selected_room_x][selected_room_y-1].active_fire_level != 0
					{
						burning_rooms++
					}
				}
			}
			if(selected_room_y != global.room_size*2 - 2)
			{
				if global.church_layout[selected_room_x][selected_room_y+1] == 1
				{
					surrounding_rooms++					
					if global.room_data[selected_room_x][selected_room_y+1].active_fire_level != 0
					{
						burning_rooms++
					}
				}
			}
	

	if surrounding_rooms == burning_rooms
	{
		return true
	}
	else
	{
		return false
	}

}

function increase_fire_level()
{
	if !(global.coordinates.a == selected_room_x && global.coordinates.b == selected_room_y )
	{
		if (global.room_data[selected_room_x][selected_room_y].active_fire_level == 3)
		{
			if check_surrounding_rooms() == false
			{
				global.room_data[selected_room_x][selected_room_y].active_fire_level = 1
				spread_fire()
			}
			else
			{
				random_int = round(random_range(0,n-1))
				selected_room_x = burning_rooms_list[random_int].coordinate_x
				selected_room_y = burning_rooms_list[random_int].coordinate_y
				increase_fire_level()
			}
		}
		else
		{
			global.room_data[selected_room_x][selected_room_y].active_fire_level ++ 
		}
		
	}
}





