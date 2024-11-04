//sets the size of the grid to be 3x3
size = 3
// initiates the grid, filling all positions with the empty value
for (i = 0; i < size; i++)
{
	for (j = 0; j < size; j++)
	{
		maze[i][j] = 0
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
			if y_pos != size - 1
			{
				if maze[y_pos+1][x_pos] == 0
				{
					cell_choice[passes] = string(y_pos+1) + string(x_pos) + "v"
					passes++
				}
			}	
			//downwards direction
			if x_pos != size - 1
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
	for (i = 0; i < size; i++)
	{
		for (j = 0; j < size; j++)
		{
			if maze[i][j] != 0
			{
				empty_adjacent_space(i,j)
			}
		}	
	}
}

// alternates between finding cells to move to and selection one at random
// happens 8 times as to fill the 3x3 grid
for(k = 0; k < 8; k++)
{
	
check_for_cells()
visit_cell()
}

// displays the final result
for (i = 0; i < size; i++)
{
	
	for (j = 0; j < size; j++)
	{
		row[j] = maze[i][j]
	}	
	show_debug_message(row)
}


//for (i = 0; i < passes; i++)
//{
//	show_debug_message(cell_choice[i])
//}
//total = real(string_char_at(test[0][1],1)) + real(string_char_at(test[0][1],2))
//show_debug_message(total)






















