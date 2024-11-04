/// @description Insert description here
// You can write your code in this editor
maze = ds_grid_create(3,3)

ds_grid_add_region(maze,0,0,3,3,0)

for (i = 0; i < 3; i++)
{
	for (j = 0; j < 3; j++)
	{
		row[j] = ds_grid_get(maze,i,j)
	}	
	show_debug_message(row)
}



