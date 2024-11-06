/// @description Insert description here
// You can write your code in this editor
global.fire_spread_ticks ++


if global.fire_spread_ticks == 250
{
	burning_rooms_counter()
	random_int = round(random_range(0,n-1))
	global.fire_spread_ticks = 0
	if (global.coordinates.a != burning_rooms_list[random_int].coordinate_x)&&(global.coordinates.b != burning_rooms_list[random_int].coordinate_y)
	{
		global.room_data[burning_rooms_list[random_int].coordinate_x][burning_rooms_list[random_int].coordinate_y].active_fire_level ++ 
	}
	n = 0
	obj_spawner.alarm[0] = 1
}