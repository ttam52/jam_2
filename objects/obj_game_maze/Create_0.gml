/// @description Insert description here
// You can write your code in this edit
x_pos = 2
y_pos = 4

for (i = 0; i < 5; i++)
{
	for (j = 0; j < 5; j++)
	{
		maze[i][j] = 0
	}	
}




function empty_adjacent_space ()
{	
	check_direction = round(random_range(0.5,4.49))
	
	switch check_direction
	{
		// upwards direction, checking if there is an empty space to be turned into a room
		case 1:
		if x_pos != 0
		{
			if maze[y_pos][x_pos-1] == 0
			{
				x_pos = x_pos - 1
			}
		}	
		break;
		// right hand direction
		case 2:
		if y_pos != 4
		{
			if maze[y_pos+1][x_pos] == 0
			{
				y_pos = y_pos + 1
			}
		}	
		break;
		//downwards direction
		case 3:
		if x_pos != 4
		{
			if maze[y_pos][x_pos+1] == 0
			{
				x_pos = x_pos + 1
			}
		}	
		break;
		//left hand direction
		case 4:
		if y_pos != 4
		{
			if maze[y_pos+1][x_pos] == 0
			{
				y_pos = y_pos + 1
			}
		}	
		break;
		
		
	}
	
}


for (i = 0; i< 4; i++)
{
	maze[y_pos][x_pos] = 1
	empty_adjacent_space()

}



for (i = 0; i < 5; i++)
{
	for (j = 0; j < 5; j++)
	{
		top_row[j] = maze[i][j]
	}	
	show_debug_message(top_row)
}


