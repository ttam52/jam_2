/// @description Insert description here
// You can write your code in this editor

if player_spawn_cooldown == 0
{
	
}
else
{
if room == rm_main
{
	global.room_data[6][2].occupied = 1
	global.room_data[6][2].fountain_room = 1
	global.coordinates.a = 6
	global.coordinates.b = 2
	
}
else
{
		global.room_data[global.coordinates.a][global.coordinates.b].occupied = 0
		if x == 256
		{
			if y = 0
			{
				global.coordinates.a --
				global.player_spawn_direction = 2
			}
			else
			{
				global.coordinates.a ++
				global.player_spawn_direction = 1
			}
		}
		else if y == 256
		{
			if x = 0
			{
				global.coordinates.b --
				global.player_spawn_direction = 4
			}
			else
			{
				global.coordinates.b ++
				global.player_spawn_direction = 3
			}
		}
	
		global.room_data[global.coordinates.a][global.coordinates.b].occupied = 1
		}
		
		switch (global.room_data[global.coordinates.a][global.coordinates.b].room_type)
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