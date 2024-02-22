var hitNow = ds_list_create();
var hits = instance_place_list(x,y,oPlayer,hitNow,false);
if (hits > 0)
{
	for (var i = 0; i < hits; i++)
	{
		var hitID = hitNow[| i]; 
		if ds_list_find_index(hit,hitID) == -1 && hitID.iFrames == 0
		{
			ds_list_add(hit,hitID);
			hitID.explid = id
			with (hitID)
			{
				angle = point_direction(explid.x,explid.y,x,y);
				if state = PLAYERSTATE.SHIELD shield = max(shield-(argument1/2),0);
				else
				{
					hp += argument1;
					if angle >= 0 && angle <= 90 || angle >= 180 && angle <= 270
					{
						knockbackx = (abs(argument0*sin(angle)+1)*explid.image_xscale)*1.2*(1+0.015*hp);
						knockbacky = (-abs(argument0*cos(angle))-2)*1.2*(1+0.015*hp);
					}
					else
					{
						knockbackx = (abs(argument0*cos(angle)+1)*explid.image_xscale)*1.2*(1+0.015*hp);
						knockbacky = (-abs(argument0*sin(angle))-2)*1.2*(1+0.015*hp);
					}
					stunDur = argument2*(1+0.005*hp);
					state = PLAYERSTATE.STUN;
					freeFall = false;
				}
			}
		}
	}
}
ds_list_destroy(hitNow);