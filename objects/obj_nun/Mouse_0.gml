/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(obj_mc) < 20 && clicked_flag == 0) 
{
	clicked_flag = 1
	instance_create_layer(178,110,"Instances",obj_speech_bubble)
}

