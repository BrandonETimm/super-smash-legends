if attackType == 1
{
	if attackDir == 1
	{
		if !animStarted
		{
			sprite_index = sJinxAttackSF
			image_index = 0;
			animationTime = 32;
			animStarted = true;
		}
		if animationTime == 22
		{
			projectileid = instance_create_layer(x+10*image_xscale,y-13,"Abilities",oRocket);
			projectileid.playerId = id;
			projectileid.dir = image_xscale;
			projectileid.image_xscale = image_xscale;
			audio_play_sound(soundJinxShootRocket,1,false);
		}
	}
	else if attackDir == 2
	{
		if !animStarted
		{		
			sprite_index = sJinxAttackSU
			image_index = 0;
			animationTime = 28;
			animStarted = true;
			freeFall = true;
			ds_list_clear(hit)
		}
		if animationTime == 23
		{
			ysp = -16;
			shortJumpT = 5;
			audio_play_sound(soundJinxRocketJump,1,false);
		}
		mask_index = sJinxAttackSUHB;
		Attack(0,8,8,8)
	}
	else if attackDir == 3
	{
		if !animStarted
		{
			sprite_index = sJinxAttackSD
			image_index = 0;
			animationTime = 30;
			animStarted = true;
		}
		if animationTime == 12
		{
			projectileid = instance_create_layer(x-8*image_xscale,y-22,"Abilities",oGrenade);
			projectileid.playerId = id;
			projectileid.xsp = image_xscale*8;
			projectileid.image_xscale = image_xscale;
		}
	}
	else
	{
		if !animStarted
		{
			sprite_index = sJinxAttackSN
			image_index = 0;
			ds_list_clear(hit)
			animationTime = 22;
			animStarted = true;
		}
		if animationTime == 16
		{
			projectileid = instance_create_layer(x+20*image_xscale,y+12,"Abilities",oBullet);
			projectileid.playerId = id;
			projectileid.dir = image_xscale;
			projectileid.image_xscale = image_xscale;
			audio_play_sound(soundJinxGun,1,false);
		}
	}
}
else
{
	if !airAttack
	{
		if attackDir == 1
		{
			if !animStarted
			{
				sprite_index = sJinxAttackF
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 18;
				animStarted = true;
			}
			mask_index = sJinxAttackFHB;
			connected = Attack(8,-5,8,10)
		}
		else if attackDir == 2
		{
			if !animStarted
			{
				sprite_index = sJinxAttackU
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 14;
				animStarted = true;
				audio_play_sound(soundJinxHit,1,false);
			}
			mask_index = sJinxAttackUHB;
			Attack(1,-14,8,15)
		}
		else if attackDir == 3
		{
			if !animStarted
			{
				sprite_index = sJinxAttackD
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 23;
				animStarted = true;
				audio_play_sound(soundJinxHit,1,false);
			}
			mask_index = sJinxAttackDHB;
			Attack(6,-3,10,15)
		}
		else
		{
			if !animStarted
			{
				sprite_index = sJinxAttackN
				image_index = 0;
				ds_list_clear(hit);
				animationTime = 28;
				animStarted = true;
			}
			mask_index = sJinxAttackNHB;
			if animationTime == 9 ds_list_clear(hit);
			if animationTime >= 17 connected = Attack(2,1,4,10);
			else connected = Attack(10,-5,6,15);
		}
	}
	else
	{
		if attackDir == 1
		{
			if !animStarted
			{
				sprite_index = sJinxAttackAF
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 26;
				animStarted = true;
			}
			mask_index = sJinxAttackAFHB;
			connected = Attack(10,-5,11,15)
		}
		else if attackDir == 2
		{
			if !animStarted
			{
				sprite_index = sJinxAttackAU
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 14;
				animStarted = true;
				audio_play_sound(soundJinxHit,1,false);
			}
			mask_index = sJinxAttackAUHB;
			Attack(5,-10,10,15)
		}
		else if attackDir == 3
		{
			if !animStarted
			{
				sprite_index = sJinxAttackAD
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 18;
				animStarted = true;
				audio_play_sound(soundJinxHit,1,false);
			}
			mask_index = sJinxAttackADHB;
			Attack(5,10,8,15)
		}
		else
		{
			if !animStarted
			{
				sprite_index = sJinxAttackAN
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 23;
				animStarted = true;
			}
			mask_index = sJinxAttackANHB;
			connected = Attack(5,-5,8,15)
		}
	}
	if connected audio_play_sound(soundJinxHitGun,1,false);
}
mask_index = sJinx;
if animationTime == 0
{
	sprite_index = sJinx;
	animStarted = false;
	state = PLAYERSTATE.FREE;
}
else
{
	animationTime--;	
}