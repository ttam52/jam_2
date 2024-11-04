/// @description Insert description here
// You can write your code in this edit
x_pos = 2
y_pos = 4

for (i = 0; i < 10; i++)
{
	for (j = 0; j < 10; j++)
	{
		maze[i][j] = 0
	}	
}


for (i = 0; i< 4; i++)
{
	maze[x_pos][y_pos] = 1
	empty_adjacent_space()

}



function empty_adjacent_space ()
{	
	check_direction = round(random_range(1,4))
	switch check_direction
	{
		// upwards direction, checking if there is an empty space to be turned into a room
		case 1:
		if y_pos != 0
		{
			if maze[x_pos][y_pos-1] == 0
			{
				y_pos = y_pos - 1
			}
		}	
		break;
		// right hand direction
		case 2:
		if x_pos != 4
		{
			if maze[x_pos+1][y_pos] == 0
			{
				x_pos = x_pos + 1
			}
		}	
		break;
		//downwards direction
		case 3:
		if y_pos != 4
		{
			if maze[x_pos][y_pos+1] == 0
			{
				y_pos = y_pos + 1
			}
		}	
		break;
		//left hand direction
		case 2:
		if x_pos != 4
		{
			if maze[x_pos+1][y_pos] == 0
			{
				x_pos = x_pos + 1
			}
		}	
		break;
		
		
	}
	
}






//for (i = 0; i < 10; i++)
//{
//	for (j = 0; j < 10; j++)
//	{
//		show_debug_message(maze[i][j])
//	}	
//}


