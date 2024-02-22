if respawnT > 0
{
	respawnT--;
	if keyLeft || keyRight || keyUp || keyDown || jump || keyAttack || keySpecial || keyShield respawnT = 0;
	if respawnT == 0 
	{
		instance_destroy(respawnId);
		iFrames = 120;
	}
}
if respawnT == 0
{
move = keyRight - keyLeft;
specialCreate = false;
xsp = move*walksp;

if keyDown && ysp > 0 ysp = min(ysp+grav*1.5,10);
else ysp = min(ysp+grav,6);

if abs(knockbackx) > 2 
{
	if place_meeting(x,y+1,oWall)
	{
		if (keyRight && knockbackx < 0) || (keyLeft && knockbacky > 0) knockbackx *= 0.65;
		else if (keyRight && knockbackx > 0) || (keyLeft && knockbacky < 0) knockbackx *= 0.77;
		else knockbackx *= 0.7;
	}
	else
	{
		if (keyRight && knockbackx < 0) || (keyLeft && knockbacky > 0) knockbackx *= 0.85;
		else if (keyRight && knockbackx > 0) || (keyLeft && knockbacky < 0) knockbackx *= 0.97;
		else knockbackx *= 0.95;
	}
}
else knockbackx = 0;

if jump && !freeFall
{
	if place_meeting(x,y+1,oWall) 
	{
		ysp = -jumpsp;
		shortJumpT = 0;
	}
	else if doubleJump
	{
		ysp = -jumpsp;
		doubleJump = false;
		shortJumpT = 0;
	}
}
if holdjump shortJumpT++;

xsp += knockbackx;
if (place_meeting(x+xsp,y,oWall))
{	
	while(!place_meeting(x+sign(xsp),y,oWall)) x+=sign(xsp);
	xsp=0;
	knockbackx = 0;
}
x += xsp;

if (place_meeting(x,y+ysp,oWall))
{	
	if ysp > 0 
	{
		doubleJump = true;
		freeFall = false;
	}
	while (!place_meeting(x,y+sign(ysp),oWall)) y+=sign(ysp);
	ysp=0;
}
y += ysp;

if abs(xsp) > 0 && place_meeting(x,y+1,oWall)
{
	if xsp > 0 image_xscale = 1;
	else image_xscale = -1;
	switch(champ)
	{
		case CHAMPION.ZED: sprite_index = sZedWalk; break;
		case CHAMPION.KAT: sprite_index = sKatWalk; break;
		case CHAMPION.WUKONG: sprite_index = sWukongWalk; break;
		case CHAMPION.AKALI: sprite_index = sAkaliWalk; break;
		case CHAMPION.JINX: sprite_index = sJinxWalk; break;
		case CHAMPION.IVERN: sprite_index = sIvernWalk; break;
	}
}
else
{
	if xsp > 0 image_xscale = 1;
	else if xsp < 0 image_xscale = -1;
	switch(champ)
	{
		case CHAMPION.ZED: sprite_index = sZed; break;
		case CHAMPION.KAT: sprite_index = sKat; break;
		case CHAMPION.WUKONG: sprite_index = sWukong; break;
		case CHAMPION.AKALI: sprite_index = sAkali; break;
		case CHAMPION.JINX: sprite_index = sJinx; break;
		case CHAMPION.IVERN: sprite_index = sIvern; break;
	}
}

if !freeFall
{
	if (keyAttack || keySpecial)
	{
		if keyLeft || keyRight attackDir = 1;
		else if keyUp attackDir = 2;	
		else if keyDown attackDir = 3;	
		else attackDir = 0;
		if keySpecial attackType = 1;
		else if keyAttack attackType = 2;
		state = PLAYERSTATE.ATTACK;
	}
	else if keyShield 
	{
		switch(champ)
		{
			case CHAMPION.ZED: sprite_index = sZedShield; break;
			case CHAMPION.KAT: sprite_index = sKatShield; break;
			case CHAMPION.WUKONG: sprite_index = sWukongShield; break;
			case CHAMPION.AKALI: sprite_index = sAkaliShield; break;
			case CHAMPION.JINX: sprite_index = sJinxShield; break;
			case CHAMPION.IVERN: sprite_index = sIvernShield; break;
		}
		state = PLAYERSTATE.SHIELD;
	}
}
else attackType = 0;
}