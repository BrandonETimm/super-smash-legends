if attackType == 1
{
	if attackDir == 1
	{
		if !animStarted
		{
			sprite_index = sIvernAttackSF
			image_index = 0;
			animationTime = 35;
			animStarted = true;
			audio_play_sound(soundIvernRoot,1,false);
		}
		if animationTime == 25
		{
			projectileid = instance_create_layer(x+14*image_xscale,y-10,"Abilities",oRoot);
			projectileid.playerId = id;
			projectileid.dir = image_xscale;
			projectileid.image_xscale = image_xscale;
			
		}
	}
	else if attackDir == 2
	{
		if !animStarted
		{		
			sprite_index = sIvernAttackSU
			image_index = 0;
			animationTime = 28;
			animStarted = true;
			freeFall = true;
			ds_list_clear(hit)
			ysp = -16;
			shortJumpT = 5;
			audio_play_sound(soundIvernAttack,1,false);
		}
		mask_index = sIvernAttackSUHB;
		Attack(12,-2,8,8)
	}
	else if attackDir == 3
	{
		if !instance_exists(specialid)
		{
			if !animStarted
			{
				sprite_index = sIvernAttackSD
				image_index = 0;
				animationTime = 30;
				animStarted = true;
				audio_play_sound(soundIvernDaisy,1,false);
			}
			if animationTime == 12
			{
				specialid = instance_create_layer(x-8*image_xscale,y-22,"Abilities",oDaisy);
				specialid.playerId = id;
				specialid.dir = image_xscale;
				specialid.xsp = image_xscale*6;
				specialid.image_xscale = image_xscale;
			}
		}
	}
	else
	{
		if !animStarted
		{
			sprite_index = sIvernAttackSN
			image_index = 0;
			animationTime = 60;
			animStarted = true;
			audio_play_sound(soundIvernHeal,1,false);
		}
		if animationTime == 0
		{
			hp = max(hp-4,0);
			shield = min(shield+5,30)
		}
		if keySpecial && animationTime < 55 animationTime = 0;
		walksp = 0;
	}
}
else
{
	if !animStarted audio_play_sound(soundIvernAttack,1,false);
	if !airAttack
	{
		if attackDir == 1
		{
			if !animStarted
			{
				sprite_index = sIvernAttackF
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 20;
				animStarted = true;
			}
			mask_index = sIvernAttackFHB;
			connected = Attack(12,-5,9,10)
		}
		else if attackDir == 2
		{
			if !animStarted
			{
				sprite_index = sIvernAttackU
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 20;
				animStarted = true;
			}
			mask_index = sIvernAttackUHB;
			Attack(10,-6,11,15)
		}
		else if attackDir == 3
		{
			if !animStarted
			{
				sprite_index = sIvernAttackD
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 20;
				animStarted = true;
			}
			mask_index = sIvernAttackDHB;
			Attack(10,-10,10,15)
		}
		else
		{
			if !animStarted
			{
				sprite_index = sIvernAttackN
				image_index = 0;
				ds_list_clear(hit);
				animationTime = 30;
				animStarted = true;
			}
			mask_index = sIvernAttackNHB;
			if animationTime == 10 
			{
				ds_list_clear(hit);
				audio_play_sound(soundIvernAttack,1,false);
			}
			if animationTime > 10 connected = Attack(2,1,5,15);
			else connected = Attack(4,8,5,15);
		}
	}
	else
	{
		if attackDir == 1
		{
			if !animStarted
			{
				sprite_index = sIvernAttackAF
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 25;
				animStarted = true;
			}
			mask_index = sIvernAttackAFHB;
			connected = Attack(14,-2,10,15)
		}
		else if attackDir == 2
		{
			if !animStarted
			{
				sprite_index = sIvernAttackAU
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 18;
				animStarted = true;
			}
			mask_index = sIvernAttackAUHB;
			Attack(1,-14,9,15)
		}
		else if attackDir == 3
		{
			if !animStarted
			{
				sprite_index = sIvernAttackAD
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 20;
				animStarted = true;
			}
			mask_index = sIvernAttackADHB;
			Attack(1,12,8,15)
		}
		else
		{
			if !animStarted
			{
				sprite_index = sIvernAttackAN
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 25;
				animStarted = true;
			}
			mask_index = sIvernAttackANHB;
			connected = Attack(5,-5,8,15)
		}
	}
}
mask_index = sIvern;
if animationTime == 0
{
	sprite_index = sIvern;
	animStarted = false;
	state = PLAYERSTATE.FREE;
}
else
{
	animationTime--;	
}