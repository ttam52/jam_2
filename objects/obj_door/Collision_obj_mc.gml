/// @description Insert description here
// You can write your code in this editor
if room == rm_main
{
	global.room_data[6][2].occupied = 1
	global.coordinates.a = 6
	global.coordinates.b = 2
	
	switch (global.room_data[6][2].room_type)
	{
		case 1:
			room_goto(rm_altar)
		break;
		case 2:
			room_goto(rm_fire_place)
		break;
		case 3:
			room_goto(rm_kitchen)
		break;
	}
	
}