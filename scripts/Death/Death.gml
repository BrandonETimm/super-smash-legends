if stocks > 1 && oPlayerInfo.gameT == 180
{
	x = 480;
	y = 200;
	image_xscale = 1;
	xsp = 0;
	ysp = 0;
	doubleJump = true;
	knockbackx = 0;
	knockbacky = 0;
	animationTime = 0;
	shield = maxShield;
	state = PLAYERSTATE.FREE;
	hp = 0;
	stunDur = 0;
	freeFall = false;
	respawnT = 240;
	respawnId = instance_create_layer(x,y+32,"Abilities",oRespawnPlat);
	stocks--;
	iFrames = 240;
}
else
{
	if object_index == oPlayer1 
	{
		global.winner = 2;
		oPlayer1.x = 10000;
	}
	else 
	{
		global.winner = 1;
		oPlayer2.x = 10000;
	}
	if oPlayerInfo.gameT == 180 stocks--;
	oPlayerInfo.gameT--;
	if oPlayerInfo.gameT == 0 room_goto_next();
}