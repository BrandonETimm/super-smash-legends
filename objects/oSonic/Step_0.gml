key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_down = keyboard_check(ord("S"));

move = key_right - key_left;

if xsp == 0
{
	xsp = walksp*move	
}
else if move == 0
{
	if xsp > 0 xsp = max(0,xsp-0.5)	;
	else xsp = min(0,xsp+0.5);
}
else if sign(move) == sign(xsp)
{
	if xsp > 0 xsp = min(runsp,xsp+0.125);
	else xsp = max(-runsp,xsp-0.125);
}
else
{
	if xsp > 0 xsp = max(0,xsp-1);
	else xsp = min(0,xsp+1);
}

if (place_meeting(x,y+1,oWall)) && keyboard_check_pressed(vk_space)
{
	ysp = -jumpsp;
}
ysp += grv;

if (place_meeting(x+xsp,y,oWall))
{	
	while(!place_meeting(x+sign(xsp),y,oWall))
	{
		if (!place_meeting(x+sign(xsp),y-2,oWall))
		{
			y -= 2;	
		}
		x+=sign(xsp);
	}
	xsp=0;
}

x += xsp;

//horizontal movement

if (place_meeting(x,y+ysp,oWall))
{
	while(!place_meeting(x,y+sign(ysp),oWall))
	{
		y+=sign(ysp);
	}
	ysp=0;
}

y += ysp;

if move != 0
{
	image_xscale = move	
}
if abs(xsp) >= runsp 
{
	sprite_index = sSonicRun;
	image_speed = 15;
}
else if abs(xsp) >= walksp
{	
	sprite_index = sSonicWalk;
	image_speed = 5 - walksp + xsp*2.5;
}
else
{
	sprite_index = sSonic;
}