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
	
	if selected_room_x == global.coordinates.a && selected_room_y == global.coordinates.b
	{
		burning_rooms_counter()
	}
	
	
}
function spread_fire()
{
			if(selected_room_x != 0)
			{
				if global.church_layout[selected_room_x-1][selected_room_y] == 1
				{
					global.room_data[selected_room_x-1][selected_room_y].active_fire_level ++
					enemy_management(selected_room_x-1,selected_room_y)
				}					
			}
				
			if(selected_room_x != global.room_size*2 - 2)
			{
				if global.church_layout[selected_room_x+1][selected_room_y] == 1
				{
					global.room_data[selected_room_x+1][selected_room_y].active_fire_level ++	
					enemy_management(selected_room_x+1,selected_room_y)
				}
			}

			if(selected_room_y != 0)
			{
				if global.church_layout[selected_room_x][selected_room_y-1] == 1
				{
					global.room_data[selected_room_x][selected_room_y-1].active_fire_level ++
					enemy_management(selected_room_x,selected_room_y-1)
				}
			}
			if(selected_room_y != global.room_size*2 - 2)
			{
				if global.church_layout[selected_room_x][selected_room_y+1] == 1
				{
					global.room_data[selected_room_x][selected_room_y+1].active_fire_level ++
					enemy_management(selected_room_x,selected_room_y+1)
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
		if (global.room_data[selected_room_x][selected_room_y].active_fire_level > 2)
		{
			if check_surrounding_rooms() == false
			{
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
			enemy_management(selected_room_x,selected_room_y)
		}
		
	}
}

function enemy_management(room_x,room_y)
{
// checks to see how many rooms there are with an active fire level > 1
// takes the coords of those rooms and populates them with enemies according to the active fire level

global.room_enemies[room_x][room_y].amount ++
current_enemy = global.room_enemies[room_x][room_y].amount

	
//creates random enemies in the room, need to fix to only add new random enemies so old ones dont get overwritten.

	switch round(random_range(1,2))
	{
		case 1:
			global.room_enemies[room_x][room_y].type[current_enemy] = obj_fire_fly
		break
		case 2:
			global.room_enemies[room_x][room_y].type[current_enemy] = obj_fire_walker
		break			
	}			
	global.room_enemies[room_x][room_y].x_coordinate[current_enemy] = round(random_range(64,448))
	global.room_enemies[room_x][room_y].y_coordinate[current_enemy] = round(random_range(64,448))		
			
		
	

}






