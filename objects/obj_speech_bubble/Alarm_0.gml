/// @description Insert description here
// You can write your code in this editor
image_index ++
alarm_set(0,100)
if image_index + 1 == 5
{
	instance_create_layer(320,160,"Instances",obj_door)
	instance_destroy()	
	obj_nun.clicked_flag = 0
}