///// @description Insert description here
//// You can write your code in this edit
//found_empty = false
//x_pos = 2
//y_pos = 4

//for (i = 0; i < 5; i++)
//{
//	for (j = 0; j < 5; j++)
//	{
//		maze[i][j] = 0
//	}	
//}
//maze[y_pos][x_pos] = 1



//function empty_adjacent_space ()
//{	
	
	
//	while found_empty == false
//	{
//		check_direction = round(random_range(0.5,4.49))

//		switch check_direction
//		{
//			// upwards direction, checking if there is an empty space to be turned into a room
//			case 1:
//			if x_pos != 0
//			{
//				if maze[y_pos][x_pos-1] == 0
//				{
//					x_pos = x_pos - 1
//					found_empty = true
//				}
//			}	
//			break;
//			// right hand direction
//			case 2:
//			if y_pos != 4
//			{
//				if maze[y_pos+1][x_pos] == 0
//				{
//					y_pos = y_pos + 1
//					found_empty = true
//				}
//			}	
//			break;
//			//downwards direction
//			case 3:
//			if x_pos != 4
//			{
//				if maze[y_pos][x_pos+1] == 0
//				{
//					x_pos = x_pos + 1
//					found_empty = true
//				}
//			}	
//			break;
//			//left hand direction
//			case 4:
//			if y_pos != 0
//			{
//				if maze[y_pos-1][x_pos] == 0
//				{
//					y_pos = y_pos - 1
//					found_empty = true
//				}
//			}	
//			break;
//		}
		
		
//	}
	
//}


//for (i = 0; i< 10; i++)
//{
//	found_empty = false
//	empty_adjacent_space()
//	maze[y_pos][x_pos] = 1

//}



//for (i = 0; i < 5; i++)
//{
//	for (j = 0; j < 5; j++)
//	{
//		top_row[j] = maze[i][j]
//	}	
//	show_debug_message(top_row)
//}


// PRIMS ATTEMPT


for (i = 0; i < 3; i++)
{
	for (j = 0; j < 3; j++)
	{
		maze[i][j] = 0
	}	
}

//startubg point
maze[2][1] = 1

function check_legal_cells()
{
	
}




for (i = 0; i < 3; i++)
{
	for (j = 0; j < 3; j++)
	{
		top_row[j] = maze[i][j]
	}	
	show_debug_message(top_row)
}
























