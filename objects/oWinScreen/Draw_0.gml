if global.winner == 1
{
	switch(global.champ1)
	{
		case 1: draw_sprite_stretched(sZed,0,-96,72,768,768); break;
		case 2: draw_sprite_stretched(sKat,0,-96,72,768,768); break;
		case 3: draw_sprite_stretched(sWukong,0,-96,72,768,768); break;
		case 4: draw_sprite_stretched(sAkali,0,-96,72,768,768); break;
		case 5: draw_sprite_stretched(sJinx,0,-96,72,768,768); break;
		case 6: draw_sprite_stretched(sIvern,0,-96,72,768,768); break;
	}
	draw_sprite_stretched(sP1Wins,0,460,240,435,75);
}
if global.winner == 2
{
	switch(global.champ2)
	{
		case 1: draw_sprite_stretched(sZed,0,-96,72,768,768); break;
		case 2: draw_sprite_stretched(sKat,0,-96,72,768,768); break;
		case 3: draw_sprite_stretched(sWukong,0,-96,72,768,768); break;
		case 4: draw_sprite_stretched(sAkali,0,-96,72,768,768); break;
		case 5: draw_sprite_stretched(sJinx,0,-96,72,768,768); break;
		case 6: draw_sprite_stretched(sIvern,0,-96,72,768,768); break;
	}
	draw_sprite_stretched(sP2Wins,0,460,240,435,75);
}