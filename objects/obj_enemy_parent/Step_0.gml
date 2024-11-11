/// @description Insert description here
// You can write your code in this editor
if fire_health < 1
{
	instance_destroy()
	global.room_data[global.coordinates.a][global.coordinates.b].active_fire_level --
	global.room_enemies[global.coordinates.a][global.coordinates.b].amount --
}
