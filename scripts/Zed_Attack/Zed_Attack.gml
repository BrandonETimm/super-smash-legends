if attackType == 1
{
	if attackDir == 1
	{
		if !animStarted
		{
			sprite_index = sZedAttackSF
			image_index = 0;
			animationTime = 30;
			animStarted = true;
			if instance_exists(specialid)
			{
				with (specialid)
				{
					sprite_index = sZedAttackSF
					image_index = 0;
				}
			}
		}
		if animationTime == 25
		{
			shurikenid = instance_create_layer(x+12*image_xscale,y-12,"Abilities",oShuriken);
			shurikenid.playerId = id;
			shurikenid.dir = image_xscale;
			with (specialid)
			{
				shurikenid = instance_create_layer(x+12*image_xscale,y-12,"Abilities",oShurikenShadow);
				shurikenid.playerId = playerId;
				shurikenid.dir = image_xscale;
			}
			audio_play_sound(soundZedThrow,1,false);
		}
	}
	else if attackDir == 2
	{
		if !animStarted
		{
			sprite_index = sZedAttackSU
			image_index = 0;
			animationTime = 20;
			animStarted = true;
			if instance_exists(specialid)
			{
				if !specialid.used
				{
					tempx = x;
					tempy = y;
					x = specialid.x;
					y = specialid.y;
					specialid.x = tempx;
					specialid.y = tempy;
					specialid.used = true;
					audio_play_sound(soundZedSwap,1,false);
				}
			}
			else specialCreate = true;
		}
	}
	else if attackDir == 3
	{
		if !animStarted
		{
			sprite_index = sZedAttackSD
			image_index = 0;
			ds_list_clear(hit)
			animationTime = 53;
			animStarted = true;
			if instance_exists(specialid)
			{
				with (specialid)
				{
					sprite_index = sZedAttackSD
					image_index = 0;
					ds_list_clear(hit)
				}
			}
		}
		if instance_exists(specialid)
		{
			with (specialid)
			{
				mask_index = sZedAttackSDHB;
				playerId.connected = Attack(8,-2.5,10,10)
				mask_index = sZed;
			}
		}
		mask_index = sZedAttackSDHB;
		if connected audio_play_sound(soundZedStab,1,false);
		connected = Attack(16,-5,20,20)
		if connected audio_play_sound(soundZedStab,1,false);
	}
	else
	{
		if !animStarted
		{
			sprite_index = sZedAttackSN
			image_index = 0;
			ds_list_clear(hit)
			animationTime = 28;
			animStarted = true;
			if instance_exists(specialid)
			{
				with (specialid)
				{
					sprite_index = sZedAttackSN
					image_index = 0;
					ds_list_clear(hit)
				}
			}
		}
		if instance_exists(specialid)
		{
			with (specialid)
			{
				mask_index = sZedAttackSNHB;
				Attack(5,-2,6,7)
				mask_index = sZed;
			}
		}
		mask_index = sZedAttackSNHB;
		Attack(10,-5,12,15)
	}
}
else
{
	if !animStarted audio_play_sound(soundZedAttack,1,false);
	if !airAttack
	{
		if attackDir == 1
		{
			if !animStarted
			{
				sprite_index = sZedAttackF
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 22;
				animStarted = true;
				if instance_exists(specialid)
				{
					with (specialid)
					{
						sprite_index = sZedAttackF
						image_index = 0;
						ds_list_clear(hit)
					}
				}
			}
			if instance_exists(specialid)
			{
				with (specialid)
				{
					mask_index = sZedAttackFHB;
					Attack(5,-2,6,7)
					mask_index = sZed;
				}
			}
			mask_index = sZedAttackFHB;
			Attack(10,-5,12,15)
		}
		else if attackDir == 2
		{
			if !animStarted
			{
				sprite_index = sZedAttackU
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 20;
				animStarted = true;
				if instance_exists(specialid)
				{
					with (specialid)
					{
						sprite_index = sZedAttackU
						image_index = 0;
						ds_list_clear(hit)
					}
				}
			}
			if instance_exists(specialid)
			{
				with (specialid)
				{
					mask_index = sZedAttackUHB;
					Attack(1,-6,4,7)
					mask_index = sZed;
				}
			}
			mask_index = sZedAttackUHB;
			Attack(2,-12,8,15)
		}
		else if attackDir == 3
		{
			if !animStarted
			{
				sprite_index = sZedAttackD
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 10;
				animStarted = true;
				if instance_exists(specialid)
				{
					with (specialid)
					{
						sprite_index = sZedAttackD
						image_index = 0;
						ds_list_clear(hit)
					}
				}
			}
			if instance_exists(specialid)
			{
				with (specialid)
				{
					mask_index = sZedAttackDHB;
					Attack(2,1,4,7)
					mask_index = sZed;
				}
			}
			mask_index = sZedAttackDHB;
			Attack(5,2,8,15)
		}
		else
		{
			if !animStarted
			{
				sprite_index = sZedAttackN
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 30;
				animStarted = true;
				if instance_exists(specialid)
				{
					with (specialid)
					{
						sprite_index = sZedAttackN
						image_index = 0;
						ds_list_clear(hit)
					}
				}
			}
			if instance_exists(specialid)
			{
				with (specialid)
				{
					mask_index = sZedAttackNHB;
					if playerId.animationTime == 6 
					{
						ds_list_clear(hit);
						audio_play_sound(soundZedAttack,1,false);
					}
					if playerId.animationTime > 6 Attack(3,-1,3,20)
					else Attack(4,-1.5,3,7)
					mask_index = sZed;
				}
			}
			mask_index = sZedAttackNHB;
			if animationTime == 6 ds_list_clear(hit)
			if animationTime > 6 Attack(3,-1,6,20)
			else Attack(8,-3,6,15)
		}
	}
	else
	{
		if attackDir == 1
		{
			if !animStarted
			{
				sprite_index = sZedAttackAF
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 20;
				animStarted = true;
				if instance_exists(specialid)
				{
					with (specialid)
					{
						sprite_index = sZedAttackAF
						image_index = 0;
						ds_list_clear(hit)
					}
				}
			}
			if instance_exists(specialid)
			{
				with (specialid)
				{
					mask_index = sZedAttackAFHB;
					Attack(5,-2,4,7)
					mask_index = sZed;
				}
			}
			mask_index = sZedAttackAFHB;
			Attack(10,-5,9,15)
		}
		else if attackDir == 2
		{
			if !animStarted
			{
				sprite_index = sZedAttackAU
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 13;
				animStarted = true;
				if instance_exists(specialid)
				{
					with (specialid)
					{
						sprite_index = sZedAttackAU
						image_index = 0;
						ds_list_clear(hit)
					}
				}
			}
			if instance_exists(specialid)
			{
				with (specialid)
				{
					mask_index = sZedAttackAUHB;
					Attack(1,-5,5,7)
					mask_index = sZed;
				}
			}
			mask_index = sZedAttackAUHB;
			Attack(3,-10,10,15)
		}
		else if attackDir == 3
		{
			if !animStarted
			{
				sprite_index = sZedAttackAD
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 18;
				animStarted = true;
				if instance_exists(specialid)
				{
					with (specialid)
					{
						sprite_index = sZedAttackAD
						image_index = 0;
						ds_list_clear(hit)
					}
				}
			}
			if instance_exists(specialid)
			{
				with (specialid)
				{
					mask_index = sZedAttackADHB;
					Attack(1,3,4,7)
					mask_index = sZed;
				}
			}
			mask_index = sZedAttackADHB;
			Attack(3,6,8,15)
		}
		else
		{
			if !animStarted
			{
				sprite_index = sZedAttackAN
				image_index = 0;
				ds_list_clear(hit)
				animationTime = 20;
				animStarted = true;
				if instance_exists(specialid)
				{
					with (specialid)
					{
						sprite_index = sZedAttackAN
						image_index = 0;
						ds_list_clear(hit)
					}
				}
			}
			if instance_exists(specialid)
			{
				with (specialid)
				{
					mask_index = sZedAttackANHB1;
					Attack(4,-2,4,7)
					mask_index = sZedAttackANHB2;
					Attack(-4,-2,4,7)
					mask_index = sZed;
				}
			}
			mask_index = sZedAttackANHB1;
			Attack(8,-5,8,15)
			mask_index = sZedAttackANHB2;
			Attack(-8,-5,8,15)
		}	
	}
}
mask_index = sZed;
if animationTime == 0
{
	if specialCreate 
	{
		if keyUp
		{
			if keyRight specialid = instance_create_layer(x+128,y-128,"Abilities",oShadow);
			else if keyLeft specialid = instance_create_layer(x-128,y-128,"Abilities",oShadow);
			else specialid = instance_create_layer(x,y-128,"Abilities",oShadow);
		}
		else if keyDown
		{
			if keyRight specialid = instance_create_layer(x+128*image_xscale,y+128,"Abilities",oShadow);
			else if keyLeft specialid = instance_create_layer(x-128*image_xscale,y+128,"Abilities",oShadow);
			else specialid = instance_create_layer(x,y+128,"Abilities",oShadow);
		}
		else if keyRight specialid = instance_create_layer(x+128,y,"Abilities",oShadow);
		else if keyLeft specialid = instance_create_layer(x-128,y,"Abilities",oShadow);
		else specialid = instance_create_layer(x+128*image_xscale,y,"Abilities",oShadow);
		specialid.playerId = id;
		specialid.image_xscale = image_xscale;
		audio_play_sound(soundZedShadow,1,false);
		if place_meeting(specialid.x,specialid.y,oWall)
		{
			wallClimb = 0;
			while place_meeting(specialid.x,specialid.y,oWall) && wallClimb < 48
			{
				wallClimb++;
				specialid.y -= 1;
			}
			if wallClimb > 32 instance_destroy(specialid);
		}
	}
	if instance_exists(specialid) specialid.sprite_index = sZed;
	specialCreate = false
	sprite_index = sZed;
	animStarted = false;
	state = PLAYERSTATE.FREE;
}
else
{
	animationTime--;	
}