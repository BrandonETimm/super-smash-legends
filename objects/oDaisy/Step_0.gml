ysp = min(ysp+grav,8);
if abs(xsp) > 0.1 xsp -= 0.1*image_xscale;
if (place_meeting(x,y+1,oWall) && ysp > 0) || xsp == 0 instance_destroy();
if ysp > 0 sprite_index = sDaisy;
else sprite_index = sDaisyUp;
if (place_meeting(x+xsp,y,oWall))
{	
	while(!place_meeting(x+sign(xsp),y,oWall)) x+=sign(xsp);
	xsp = 0;
}
x += xsp;

if (place_meeting(x,y+ysp,oWall))
{	
	while (!place_meeting(x,y+sign(ysp),oWall)) y+=sign(ysp);
	ysp = 0;
}
y += ysp;
if x < -80 || x > 1040 || y > 620 || y < -160 instance_destroy();