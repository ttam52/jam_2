/// @description Insert description here
// You can write your code in this editor
if (abs(direction-target_direction) > 10)
{
direction = target_direction
}
direction += random_range(-1,1)

if (speed > 1)
{
	motion_add(direction,-0.05)
}