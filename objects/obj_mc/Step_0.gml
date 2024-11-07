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
}
if (keyboard_check_direct(ord("A")))
{
	if x > lower_bound - 16
	{
		x-=4
	}
	
}
if (keyboard_check_direct(ord("S")))
{
	if y < upper_bound
	{
		y+=4
	}
	
}
if (keyboard_check_direct(ord("D")))
{
	if x < upper_bound + 16
	{
		x+=4
	}
}

