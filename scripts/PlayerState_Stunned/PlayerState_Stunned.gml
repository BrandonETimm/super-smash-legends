image_blend = make_color_rgb(100,100,100);
if ysp < 6 ysp += grav;	
switch(champ)
{
	case CHAMPION.ZED: sprite_index = sZed; break;
	case CHAMPION.KAT: sprite_index = sKat; break;
	case CHAMPION.WUKONG: sprite_index = sWukong; break;
	case CHAMPION.AKALI: sprite_index = sAkali; break;
	case CHAMPION.JINX: sprite_index = sJinx; break;
	case CHAMPION.IVERN: sprite_index = sIvern; break;
}
if abs(knockbackx) > 2 
{
	if place_meeting(x,y+1,oWall)
	{
		if (keyRight && knockbackx < 0) || (keyLeft && knockbackx > 0) knockbackx *= 0.67;
		else if (keyRight && knockbackx > 0) || (keyLeft && knockbackx < 0) knockbackx *= 0.77;
		else knockbackx *= 0.7;
	}
	else
	{
		if (keyRight && knockbackx < 0) || (keyLeft && knockbackx > 0) knockbackx *= 0.92;
		else if (keyRight && knockbackx > 0) || (keyLeft && knockbackx < 0) knockbackx *= 0.97;
		else knockbackx *= 0.95;
	}
}
else knockbackx = 0;
if abs(knockbacky) > 2
{
	if (keyDown && knockbacky < 0) || (keyUp && knockbacky > 0) knockbacky *= 0.87;
	else if (keyDown && knockbacky > 0) || (keyUp && knockbacky < 0) knockbacky *= 0.93;
	else knockbacky *= 0.9;
}
else knockbacky = 0;
xsp = knockbackx;
if (place_meeting(x+xsp,y,oWall))
{	
	while(!place_meeting(x+sign(xsp),y,oWall)) x+=sign(xsp);
	xsp=0;
	knockbackx *= -0.25;
}
else x += xsp;

if (place_meeting(x,y+ysp + knockbacky,oWall))
{	
	while(!place_meeting(x,y+sign(ysp+knockbacky),oWall))
	{
		y+=sign(ysp+knockbacky);
	}
	ysp = 0;
	knockbacky *= -0.25;
}
else y += ysp + knockbacky;

if stunDur > 0 stunDur--;
else
{	
	knockbacky = 0;
	state = PLAYERSTATE.FREE;
}