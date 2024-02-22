var hitNow = ds_list_create();
var hits = instance_place_list(x,y,oPlayer,hitNow,false);
argument0 *= image_xscale;
connected = false;
if (hits > 0)
{
	for (var i = 0; i < hits; i++)
	{
		var hitID = hitNow[| i]; 
		if ds_list_find_index(hit,hitID) == -1 && hitID != id && hitID.iFrames == 0  && ((image_blend != c_gray && image_blend != make_color_rgb(40,40,40)) || hitID != playerId)
		{
			ds_list_add(hit,hitID);
			with (hitID)
			{
				if state = PLAYERSTATE.SHIELD shield = max(shield-(argument2/2),0);
				else
				{
					hp = min(hp+argument2,999);
					knockbackx = argument0*(1+0.015*hp);
					knockbacky = argument1*(1+0.015*hp);
					stunDur = argument3*(1+0.005*hp);
					state = PLAYERSTATE.STUN;
					freeFall = false;
				}
			}
			connected = true;
		}
	}
}
ds_list_destroy(hitNow);
return connected;