if !animStarted
{
	if place_meeting(x,y+1,oWall) airAttack = false;
	else airAttack = true;
}
if place_meeting(x,y+1,oWall) && animStarted && airAttack 
{
	if attackType != 1 animationTime = 0;
	else airAttack = false;
}
connected = false;
switch(champ)
{
	case CHAMPION.ZED: Zed_Attack(); break;
	case CHAMPION.KAT: Kat_Attack(); break;
	case CHAMPION.WUKONG: Wukong_Attack(); break;
	case CHAMPION.AKALI: Akali_Attack(); break;
	case CHAMPION.JINX: Jinx_Attack(); break;
	case CHAMPION.IVERN: Ivern_Attack(); break;
}
if !holdjump && ysp < 0 && shortJumpT < 5 ysp = 0;
ysp = min(ysp+grav,2);
if (place_meeting(x,y+ysp,oWall))
{	
	while(!place_meeting(x,y+sign(ysp),oWall))
	{
		y+=sign(ysp);
	}
	ysp=0;
}
y += ysp;

if airAttack
{
	move = keyRight - keyLeft;

	xsp = move*walksp;
	if (place_meeting(x+xsp,y,oWall))
	{	
		while(!place_meeting(x+sign(xsp),y,oWall))
		{
			x+=sign(xsp);
		}
		xsp=0;
	}
	x += xsp;
}
walksp = 4;