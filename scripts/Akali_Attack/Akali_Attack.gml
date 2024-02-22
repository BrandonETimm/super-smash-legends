if attackType == 1
{
	if attackDir == 1
	{
		if !animStarted
		{
			image_index = 0;
			animationTime = 30;
			animStarted = true;
			if place_meeting(x,y+1,oWall) 
			{
				sprite_index = sAkaliAttackSF1;
				xdash = -12*image_xscale;
				ysp -= 4;
				shortJumpT = 5;
			}
			else 
			{
				sprite_index = sAkaliAttackSF2;
				xdash = 0;
			}
			projectileid = instance_create_layer(x,y-22,"Abilities",oAShuriken);
			projectileid.playerId = id;
			projectileid.dir = image_xscale;
			projectileid.image_xscale = image_xscale;
			audio_play_sound(soundAkaliThrowShuriken,1,false);
		}
		if place_meeting(x+xdash,y,oWall)
		{	
			while(!place_meeting(x+sign(xdash),y,oWall))
			{
				x+=sign(xdash);
			}
			xdash=0;
		}
		else xdash = sign(xdash)*max(abs(xdash)-0.5, 0);
		x += xdash;
	}
	else if attackDir == 2
	{
		if !animStarted
		{		
			sprite_index = sAkaliAttackSU
			image_index = 0;
			animationTime = 28;
			animStarted = true;
			freeFall = true;
			ysp = -14;
			shortJumpT = 5;
			ds_list_clear(hit)
			audio_play_sound(soundAkaliRecovery,1,false);
		}
		mask_index = sAkaliAttackSUHB;
		Attack(0,-28,10,12)
	}
	else if attackDir == 3
	{
		if !animStarted
		{
			sprite_index = sAkaliAttackSD
			image_index = 0;
			ds_list_clear(hit)
			animationTime = 44;
			animStarted = true;
			audio_play_sound(soundAkaliBurst,1,false);
		}
		mask_index = sAkaliAttackSDHB;
		Attack(17,-5,24,20)
	}
	else
	{
		if !animStarted
		{
			sprite_index = sAkaliAttackSN
			image_index = 0;
			ds_list_clear(hit)
			animationTime = 24;
			animStarted = true;
			audio_play_sound(soundAkaliKunai,1,false);
		}
		if animationTime == 14
		{
			projectileid = instance_create_layer(x,y-12,"Abilities",oKunai);
			projectileid.playerId = id;
			projectileid.dir = image_xscale;
			projectileid.image_xscale = image_xscale;
		}
	}
}
else
{
	if !animStarted audio_play_sound(soundAkaliAttack,1,false);
	if !airAttack
	{
		if attackDir == 1
		{
			if !animStarted
			{
				sprite_index = sAkaliAttackF
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 23;
				animStarted = true;
			}
			mask_index = sAkaliAttackFHB;
			connected = Attack(10,-5,9,12)
		}
		else if attackDir == 2
		{
			if !animStarted
			{
				sprite_index = sAkaliAttackU
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 23;
				animStarted = true;
			}
			mask_index = sAkaliAttackUHB;
			connected = Attack(1,-14,8,15)
		}
		else if attackDir == 3
		{
			if !animStarted
			{
				sprite_index = sAkaliAttackD
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 15;
				animStarted = true;
			}
			mask_index = sAkaliAttackDHB;
			connected = Attack(6,2,8,15)
		}
		else
		{
			if !animStarted
			{
				sprite_index = sAkaliAttackN
				image_index = 0;
				ds_list_clear(hit);
				animationTime = 25;
				animStarted = true;
			}
			mask_index = sAkaliAttackNHB;
			if animationTime == 10 
			{
				ds_list_clear(hit);
				audio_play_sound(soundAkaliAttack,1,false);
			}
			if animationTime >= 11 connected = Attack(2,1,4,10);
			else connected = Attack(10,-3,8,15);
		}
	}
	else
	{
		if attackDir == 1
		{
			if !animStarted
			{
				sprite_index = sAkaliAttackAF
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 20;
				animStarted = true;
			}
			mask_index = sAkaliAttackAFHB;
			connected = Attack(12,-5,9,15)
		}
		else if attackDir == 2
		{
			if !animStarted
			{
				sprite_index = sAkaliAttackAU
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 14;
				animStarted = true;
			}
			mask_index = sAkaliAttackAUHB;
			connected = Attack(0,-10,10,15)
		}
		else if attackDir == 3
		{
			if !animStarted
			{
				sprite_index = sAkaliAttackAD
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 20;
				animStarted = true;
			}
			mask_index = sAkaliAttackADHB;
			connected = Attack(1,6,8,15)
		}
		else
		{
			if !animStarted
			{
				sprite_index = sAkaliAttackAN
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 23;
				animStarted = true;
			}
			mask_index = sAkaliAttackANHB;
			if animationTime >= 13 connected = Attack(8,-2,8,15);
			else connected = Attack(-8,-2,8,15);
			if animationTime == 12 audio_play_sound(soundAkaliAttack,1,false);
		}
	}
	if connected audio_play_sound(soundAkaliHit,2,false);
}
mask_index = sAkali;
if animationTime == 0
{
	sprite_index = sAkali;
	animStarted = false;
	state = PLAYERSTATE.FREE;
}
else
{
	animationTime--;	
}