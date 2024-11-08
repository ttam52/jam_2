//sets the global.room_size of the grid to be 3x3
// initiates the grid, filling all positions with the empty value
for (i = 0; i < global.room_size; i++)
{
	for (j = 0; j < global.room_size; j++)
	{
		maze[i][j] = 0
	}	
}
for (i = 0; i < global.room_size*2 -1; i++)
{
	for (j = 0; j < global.room_size*2 -1; j++)
	{
		global.church_layout[i][j] = 0
	}	
}







//starting point (bottom middle)
maze[2][1] = 1


function empty_adjacent_space (i,j)
{	
	//function checks to see which adjacent cells are both in the grid and empty
	//the coordinates of the point are then stored and so is the direction which the point would be traveled to
	//h means horizontally and v means vertical
	
	
			x_pos = j
			y_pos = i
			// upwards direction
			if x_pos != 0
			{
				if maze[y_pos][x_pos-1] == 0
				{
					cell_choice[passes] = string(y_pos) + string(x_pos-1) + "h"
					passes++
				}
			}	
			// right hand direction
			if y_pos != global.room_size - 1
			{
				if maze[y_pos+1][x_pos] == 0
				{
					cell_choice[passes] = string(y_pos+1) + string(x_pos) + "v"
					passes++
				}
			}	
			//downwards direction
			if x_pos != global.room_size - 1
			{
				if maze[y_pos][x_pos+1] == 0
				{
					cell_choice[passes] = string(y_pos) + string(x_pos+1) + "h"
					passes++
				}
			}	
			//left hand direction
			if y_pos != 0
			{
				if maze[y_pos-1][x_pos] == 0
				{
					cell_choice[passes] = string(y_pos-1) + string(x_pos) + "v"
					passes++
				}
			}	
}
	



function visit_cell()
{
	// picks a random empty space to go to
	coordinates = cell_choice[round(random_range(0,passes-1))]
	// checks which direction the room was moved into 1=vertical 2=horizontal
	if string_char_at(coordinates,3) == "v"
	{
		maze[real(string_char_at(coordinates,1))][real(string_char_at(coordinates,2))] = 1
	}
	else
	{
		maze[real(string_char_at(coordinates,1))][real(string_char_at(coordinates,2))] = 2
	}
		
}


function check_for_cells()
{
	// finds all of the cells that have been visited
	passes = 0	
	for (i = 0; i < global.room_size; i++)
	{
		for (j = 0; j < global.room_size; j++)
		{
			if maze[i][j] != 0
			{
				empty_adjacent_space(i,j)
			}
		}	
	}
}

function expand_to_full()
{

	for(i = 0; i<global.room_size; i ++)
	{
		for(j = 0; j<global.room_size; j ++)
		{
			global.church_layout[2*i][2*j] = 1
			if (maze[i][j] == 1)
			{
				if(i != 0)
				{
					global.church_layout[2*i-1][2*j] = 1
				}
				if(i != global.room_size - 1)
				{
					global.church_layout[2*i+1][2*j] = 1
				}
			}
			else
			{
				if(j != 0)
				{
					global.church_layout[2*i][2*j-1] = 1
				}
				else if(j != global.room_size - 1)
				{
					global.church_layout[2*i][2*j+1] = 1
				}
			}
		
		}
	}
}




// displays the final result
//for (i = 0; i < global.room_size; i++)
//{
	
//	for (j = 0; j < global.room_size; j++)
//	{
//		row[j] = maze[i][j]
//	}	
//	show_debug_message(row)
//}


function initialize_room_data()
{
	for	(i = 0; i < global.room_size*2-1; i++)
	{
		for	(j = 0; j < global.room_size*2-1; j++)
		{
			global.room_data[i][j] = 
			{
				occupied : 0,
				active_fire_level : 0,
				doors_connected : "",
				room_type : "",
				fountain_room : 0,		
			}
			global.room_enemies[i][j] =
			{
				position_in_list : 0,
				amount : 0,
				type : [],
				x_coordinate : [],
				y_coordinate : [],
				
				
				
			}
			if(global.church_layout[i][j] == 1)
			{
				if(i != 0)
				{
					if global.church_layout[i-1][j] == 1
					{
						global.room_data[i][j].doors_connected += "Y"
					}
					else
					{
						global.room_data[i][j].doors_connected += "N"
					}
				}
				else
					{
						global.room_data[i][j].doors_connected += "N"
					}
				if(i != global.room_size*2 - 2)
				{
					if global.church_layout[i+1][j] == 1
					{
						global.room_data[i][j].doors_connected += "Y"
					}
					else
					{
						global.room_data[i][j].doors_connected += "N"
					}
				}
				else
					{
						global.room_data[i][j].doors_connected += "N"
					}
				if(j != 0)
				{
					if global.church_layout[i][j-1] == 1
					{
						global.room_data[i][j].doors_connected += "Y"
					}
					else
					{
						global.room_data[i][j].doors_connected += "N"
					}
				}
				else
					{
						global.room_data[i][j].doors_connected += "N"
					}
				if(j != global.room_size*2 - 2)
				{
					if global.church_layout[i][j+1] == 1
					{
						global.room_data[i][j].doors_connected += "Y"
					}
					else
					{
						global.room_data[i][j].doors_connected += "N"
					}
				}
				else
					{
						global.room_data[i][j].doors_connected += "N"
					}
			}
			else
			{
				global.room_data[i][j].doors_connected += "NNNN"
			}
			global.room_data[i][j].room_type = round(random_range(1,3))
		}
	}

}



// alternates between finding cells to move to and selection one at random
// happens 8 times as to fill the 3x3 grid
for(k = 0; k < global.room_size*global.room_size - 1; k++)
{
check_for_cells()
visit_cell()
}

expand_to_full()
initialize_room_data()



for (i = 0; i < global.room_size*2 -1; i++)
{
	
	for (j = 0; j < global.room_size*2 -1; j++)
	{
		row[j] = global.church_layout[i][j]
	}	
	show_debug_message(row)
}

// creates a base level fire in between 1-3 rooms (all fires are on the corners of the map)
for (i = 0; i <4; i++)
{
	switch round(random_range(1,4))
	{
		case 1:
			global.room_data[0][0].active_fire_level = 1
		break;
		case 2:
			global.room_data[6][0].active_fire_level = 1
		break;
		case 3:
			global.room_data[0][6].active_fire_level = 1
		break;
		case 4:
			global.room_data[6][6].active_fire_level = 1
		break;
	}
}



















