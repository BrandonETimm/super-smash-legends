image_blend = make_color_rgb(150,150,150);
if (place_meeting(x,y+1,oWall)) xsp = 0;
ysp = min(ysp+grav,6);
if (place_meeting(x+xsp,y,oWall))
{	
	while(!place_meeting(x+sign(xsp),y,oWall))
	{
		x+=sign(xsp);
	}
	xsp=0;
}
x += xsp;

if (place_meeting(x,y+ysp,oWall))
{	
	if ysp > 0
	{
		doubleJump = true	
	}
	while(!place_meeting(x,y+sign(ysp),oWall))
	{
		y+=sign(ysp);
	}
	ysp=0;
}
y += ysp;

shield = max(shield-0.05,0);

if shield == 0 
{	
	stunDur = 240;
	state = PLAYERSTATE.STUN;
	shield = 30;
}

if !keyShield state = PLAYERSTATE.FREE;