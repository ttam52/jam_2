/// @description Insert description here
// You can write your code in this editor
if (shooting_state = 0 && global.total_water >100 && distance_to_object(obj_water_refill))
{
	alarm_set(0,10)
	shooting_state = 1
}


