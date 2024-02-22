if attackType == 1
{
	if attackDir == 1
	{
		if !animStarted
		{
			image_index = 0;
			animationTime = 40;
			animStarted = true;
			sprite_index = sWukongAttackSF;
			ds_list_clear(hit)
			xdash = 10*image_xscale;
			airAttack = false;
			audio_play_sound(soundWukongDash,1,false);
		}
		if place_meeting(x+xdash,y,oWall)
		{	
			while(!place_meeting(x+sign(xdash),y,oWall))
			{
				x+=sign(xdash);
			}
			xdash=0;
		}
		x += xdash;
		if animationTime > 20 ysp = -grav;
		else xdash = sign(xdash)*max(abs(xdash)-1, 0);
		mask_index = sWukongAttackSFHB;
		if animationTime > 20 connected = Attack(8,-8,12,20)
		if connected audio_play_sound(soundWukongDashHit,1,false);
	}
	else if attackDir == 2
	{
		if !animStarted
		{		
			sprite_index = sWukongAttackSU
			image_index = 0;
			animationTime = 30;
			animStarted = true;
			freeFall = true;
			shortJumpT = 5;
			ds_list_clear(hit)
			audio_play_sound(soundWukongSpin,1,false);
		}
		mask_index = sWukongAttackSUHB;
		if animationTime % 2 == 0 ds_list_clear(hit);
		ysp = -6;
		Attack(0,-10,1,3)
		if animationTime % 4 == 0 audio_play_sound(soundWukongSpin,1,false);
	}
	else if attackDir == 3
	{
		if !instance_exists(specialid)
		{
			specialid = instance_create_layer(x,y,"Abilities",oClone);
			specialid.playerId = id;
			specialid.image_xscale = image_xscale;
			audio_play_sound(soundWukongClone,1,false);
		}
	}
	else
	{
		if !animStarted
		{
			sprite_index = sWukongAttackSN
			image_index = 0;
			ds_list_clear(hit)
			animationTime = 25;
			animStarted = true;
			audio_play_sound(soundWukongSpin,1,false);
		}
		mask_index = sWukongAttackSNHB;
		if animationTime == 15 || animationTime == 10 ds_list_clear(hit);
		if animationTime > 15 Attack(5,-1,5,6);
		else if animationTime <= 10 Attack(14,-7,5,6);
		else Attack(-5,-1,4,6);
	}
}
else
{
	if !animStarted audio_play_sound(soundWukongAttack,1,false);
	if !airAttack
	{
		if attackDir == 1
		{
			if !animStarted
			{
				sprite_index = sWukongAttackF
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 20;
				animStarted = true;
			}
			mask_index = sWukongAttackFHB;
			connected = Attack(10,-5,9,15)
		}
		else if attackDir == 2
		{
			if !animStarted
			{
				sprite_index = sWukongAttackU
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 20;
				animStarted = true;
			}
			mask_index = sWukongAttackUHB;
			Attack(1,-14,9,15)
		}
		else if attackDir == 3
		{
			if !animStarted
			{
				sprite_index = sWukongAttackD
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 12;
				animStarted = true;
			}
			mask_index = sWukongAttackDHB;
			Attack(6,2,8,15)
		}
		else
		{
			if !animStarted
			{
				sprite_index = sWukongAttackN
				image_index = 0;
				ds_list_clear(hit);
				animationTime = 25;
				animStarted = true;
			}
			mask_index = sWukongAttackNHB;
			if animationTime == 10 
			{
				ds_list_clear(hit);
				audio_play_sound(soundWukongAttack,1,false);
			}
			if animationTime >= 11 Attack(2,1,4,10);
			else Attack(10,-3,8,15);
		}
	}
	else
	{
		if attackDir == 1
		{
			if !animStarted
			{
				sprite_index = sWukongAttackAF
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 20;
				animStarted = true;
			}
			mask_index = sWukongAttackAFHB;
			connected = Attack(14,4,10,20)
		}
		else if attackDir == 2
		{
			if !animStarted
			{
				sprite_index = sWukongAttackAU
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 15;
				animStarted = true;
			}
			mask_index = sWukongAttackAUHB;
			Attack(0,-8,7,12)
		}
		else if attackDir == 3
		{
			if !animStarted
			{
				sprite_index = sWukongAttackAD
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 15;
				animStarted = true;
			}
			mask_index = sWukongAttackADHB;
			Attack(0,8,7,12)
		}
		else
		{
			if !animStarted
			{
				sprite_index = sWukongAttackAN
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 25;
				animStarted = true;
			}
			mask_index = sWukongAttackANHB;
			if animationTime > 20 || (animationTime > 10 && animationTime <= 15) Attack(10,-3,9,12);
			else Attack(-10,-3,9,12);
			if animationTime % 5 == 0 audio_play_sound(soundWukongAttack,1,false);
		}
	}
}
mask_index = sWukong;
if animationTime == 0
{
	sprite_index = sWukong;
	animStarted = false;
	state = PLAYERSTATE.FREE;
}
else
{
	animationTime--;	
}