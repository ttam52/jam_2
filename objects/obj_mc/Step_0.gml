/// @description Insert description here
// You can write your code in this edito

if room == rm_main
{
	lower_bound = -100
	upper_bound = 1000
}
else
{
	lower_bound = 32
	upper_bound = 488
}



if (keyboard_check_direct(ord("W")))
{
	if y > lower_bound
	{
		y-=4
	}
	char_direction = 2
	moving = true
}
if (keyboard_check_direct(ord("A")))
{
	if x > lower_bound - 16
	{
		x-=4
	}
	char_direction = 3
	moving = true
	
}
if (keyboard_check_direct(ord("S")))
{
	if y < upper_bound
	{
		y+=4
	}
	char_direction = 1
	moving = true

	
}
if (keyboard_check_direct(ord("D")))
{
	if x < upper_bound + 16
	{
		x+=4
	}
	char_direction = 4
	moving = true
}

if keyboard_check_released(vk_anykey)
{
moving = false
}



frames++
if frames == 10
{
	frames = 0
	if moving == true
	{
		if image_index > char_direction*4 - 1 || image_index < char_direction*4 - 3
			{
				image_index = char_direction*4 - 3
			}		
		image_index++
	}
	
	

}

