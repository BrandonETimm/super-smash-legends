if player1x == 1
{
	if player1y == 1 
	{
		draw_sprite_stretched(sZed,0,-64,320,384,384)
		if !selected1 draw_sprite(sSelectedB,0,226,112)
		else draw_sprite(sSelectedBS,0,226,112)
	}
	else
	{
		draw_sprite_stretched(sAkali,0,-64,336,384,384)	
		if !selected1 draw_sprite(sSelectedB,0,226,216)
		else draw_sprite(sSelectedBS,0,226,216)
	}
}
else if player1x == 2
{
	if player1y == 1 
	{
		draw_sprite_stretched(sKat,0,-64,320,384,384)
		if !selected1 draw_sprite(sSelectedB,0,478,112)
		else draw_sprite(sSelectedBS,0,478,112)
	}
	else 
	{
		draw_sprite_stretched(sJinx,0,-64,320,384,384)
		if !selected1 draw_sprite(sSelectedB,0,478,216)
		else draw_sprite(sSelectedBS,0,478,216)
	}
}
else
{
	if player1y == 1 
	{
		draw_sprite_stretched(sWukong,0,-64,320,384,384)
		if !selected1 draw_sprite(sSelectedB,0,730,112)
		else draw_sprite(sSelectedBS,0,730,112)
	}
	else 
	{
		draw_sprite_stretched(sIvern,0,-64,320,384,384)
		if !selected1 draw_sprite(sSelectedB,0,730,216)
		else draw_sprite(sSelectedBS,0,730,216)
	}
}

if player2x == 1
{
	if player2y == 1 
	{
		draw_sprite_stretched(sZed,0,416,320,384,384)
		if !selected2 draw_sprite(sSelectedR,0,226,112)
		else draw_sprite(sSelectedRS,0,226,112)
	}
	else
	{
		draw_sprite_stretched(sAkali,0,416,336,384,384)
		if !selected2 draw_sprite(sSelectedR,0,226,216)
		else draw_sprite(sSelectedRS,0,226,216)
	}
}
else if player2x == 2
{
	if player2y == 1
	{
		draw_sprite_stretched(sKat,0,416,320,384,384)
		if !selected2 draw_sprite(sSelectedR,0,478,112)
		else draw_sprite(sSelectedRS,0,478,112)
	}
	else
	{
		draw_sprite_stretched(sJinx,0,416,320,384,384)
		if !selected2 draw_sprite(sSelectedR,0,478,216)
		else draw_sprite(sSelectedRS,0,478,216)
	}
}
else
{
	if player2y == 1 
	{
		draw_sprite_stretched(sWukong,0,416,320,384,384)
		if !selected2 draw_sprite(sSelectedR,0,730,112)
		else draw_sprite(sSelectedRS,0,730,112)
	}
	else 
	{
		draw_sprite_stretched(sIvern,0,416,320,384,384)
		if !selected2 draw_sprite(sSelectedR,0,730,216)
		else draw_sprite(sSelectedRS,0,730,216)
	}
}