/// @description Insert description here
// You can write your code in this editor
if room == rm_main
{	
if x < 100
{
	room_goto(rm_kitchen)
}
else if x > 600 
{
	room_goto(rm_fire_place)
}
else
{
	room_goto(rm_altar)
}
}
else
{
	room_goto(rm_main)	
}