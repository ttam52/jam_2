/// @description Insert description here
// You can write your code in this editor

if player_spawn_cooldown == 0
{
	
}
else
{
if room == rm_main
{
	global.room_data[6][0].occupied = 1
	global.room_data[6][0].fountain_room = 1
	global.coordinates.a = 6
	global.coordinates.b = 0
	
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
		
		
		doors = global.room_data[global.coordinates.a][global.coordinates.b].doors_connected
		show_debug_message(doors)
		if doors == "YNNN" || doors == "NYNN"
		{
			doors = "YYNN"
		}
		else if doors == "NNYN" || doors == "NNNY"
		{
			doors = "NNYY"
		}
		var next_room = asset_get_index("_" + doors)
		room_goto(next_room)

	
}