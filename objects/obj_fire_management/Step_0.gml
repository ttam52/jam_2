/// @description Insert description here
// You can write your code in this editor
global.fire_spread_ticks ++


if global.fire_spread_ticks == 100
{
	burning_rooms_counter()	
	if n == 0
	{
		room_goto(rm_win)
	}
	increase_fire_level()
		
	global.fire_spread_ticks = 0
	n = 0
	obj_spawner.alarm[0] = 1
}
