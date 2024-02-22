if attackType == 1
{
	if attackDir == 1
	{
		if !animStarted
		{
			sprite_index = sKatAttackSF
			image_index = 0;
			animationTime = 25;
			animStarted = true;
		}
		if animationTime == 17
		{
			projectileid = instance_create_layer(x+10*image_xscale,y-10,"Abilities",oDaggerH);
			projectileid.playerId = id;
			projectileid.dir = image_xscale;
			projectileid.image_xscale = image_xscale;
			audio_play_sound(soundKatThrow,1,false);
		}
	}
	else if attackDir == 2 && instance_exists(specialid)
	{
		if !animStarted
		{		
			if instance_exists(specialid)
			{
				sprite_index = sKatAttackSU
				image_index = 0;
				animationTime = 12;
				animStarted = true;
				x = specialid.x;
				y = specialid.y - 32;
				instance_destroy(specialid);
				freeFall = true;
				audio_play_sound(soundKatJump,1,false);
			}
		}
	}
	else if attackDir == 3 || (!instance_exists(specialid) && attackDir == 2)
	{
		if !instance_exists(specialid)
		{
			if !animStarted
			{
				sprite_index = sKatAttackSD
				image_index = 0;
				animationTime = 10;
				animStarted = true;
			}
			if animationTime == 4
			{
				specialid = instance_create_layer(x,y,"Abilities",oDaggerJ);
				specialid.ysp = -14;
				specialid.playerId = id;
				audio_play_sound(soundKatUpDagger,1,false);
			}
		}
	}
	else
	{
		if !animStarted
		{
			sprite_index = sKatAttackSN
			image_index = 0;
			ds_list_clear(hit)
			animationTime = 23;
			animStarted = true;
			audio_play_sound(soundKatSpin,1,false);
		}
		mask_index = sKatAttackSNHB;
		Attack(10,-5,12,15)
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
				sprite_index = sKatAttackF
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 13;
				animStarted = true;
				audio_play_sound(soundKatSwing,1,false);
			}
			mask_index = sKatAttackFHB;
			connected = Attack(10,-5,12,12)
		}
		else if attackDir == 2
		{
			if !animStarted
			{
				sprite_index = sKatAttackU
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 10;
				animStarted = true;
				audio_play_sound(soundKatSwing,1,false);
			}
			mask_index = sKatAttackUHB;
			connected = Attack(5,-12,10,12)
		}
		else if attackDir == 3
		{
			if !animStarted
			{
				sprite_index = sKatAttackD
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 9;
				animStarted = true;
				audio_play_sound(soundKatSwing,1,false);
			}
			mask_index = sKatAttackDHB;
			connected = Attack(5,-2,6,8)
		}
		else
		{
			if !animStarted
			{
				sprite_index = sKatAttackN
				image_index = 0;
				ds_list_clear(hit);
				animationTime = 18;
				animStarted = true;
			}
			mask_index = sKatAttackNHB;
			if animationTime == 7 
			{
				ds_list_clear(hit);
				audio_play_sound(soundKatSwing,1,false);
			}
			if animationTime >= 8 connected = Attack(1,1,3,10);
			else connected = Attack(8,-5,10,8);
			
		}
	}
	else
	{
		if attackDir == 1
		{
			if !animStarted
			{
				sprite_index = sKatAttackAF
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 13;
				animStarted = true;
				audio_play_sound(soundKatSwing,1,false);
			}
			mask_index = sKatAttackAFHB;
			connected = Attack(10,-5,11,15)
		}
		else if attackDir == 2
		{
			if !animStarted
			{
				sprite_index = sKatAttackAU
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 13;
				animStarted = true;
				audio_play_sound(soundKatSwing,1,false);
			}
			mask_index = sKatAttackAUHB;
			connected = Attack(5,-10,10,15)
		}
		else if attackDir == 3
		{
			if !animStarted
			{
				sprite_index = sKatAttackAD
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 19;
				animStarted = true;
				audio_play_sound(soundKatSwing,1,false);
			}
			mask_index = sKatAttackADHB;
			connected = Attack(5,10,8,15)
		}
		else
		{
			if !animStarted
			{
				sprite_index = sKatAttackAN
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 17;
				animStarted = true;
				audio_play_sound(soundKatSwing,1,false);
			}
			mask_index = sKatAttackANHB1;
			connected = Attack(10,-8,8,8)
			mask_index = sKatAttackANHB2;
			connected = max(Attack(-10,8,8,8),connected)
		}	
	}
	if connected audio_play_sound(soundKatHit,1,false);
}
mask_index = sKat;
if animationTime == 0
{
	sprite_index = sKat;
	animStarted = false;
	state = PLAYERSTATE.FREE;
}
else
{
	animationTime--;	
}