/// @description Insert description here
// You can write your code in this editor
global.fire_spread_ticks = 0

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

}