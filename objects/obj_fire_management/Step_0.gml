/// @description Insert description here
// You can write your code in this editor
global.fire_spread_ticks ++


if global.fire_spread_ticks == 50
{
	burning_rooms_counter()	
	show_debug_message("finished burning rooms counter")
	increase_fire_level()
	show_debug_message("finished increasing fire level")
		
	global.fire_spread_ticks = 0
	n = 0
	obj_spawner.alarm[0] = 1
}