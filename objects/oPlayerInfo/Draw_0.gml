draw_set_font(global.fontNum);
draw_set_color(c_blue);
draw_rectangle(265,440,425,540,false);
draw_set_color(c_red);
draw_rectangle(535,440,695,540,false);
draw_set_color(c_white);
switch(global.champ1)
{
	case 1:
	{
		draw_sprite_stretched(sZedHead,0,280,470,36,36);
		draw_sprite(sZedHead,0,288,516);
		break;
	}
	case 2:
	{
		draw_sprite_stretched(sKatHead,0,280,470,36,36);
		draw_sprite(sKatHead,0,288,516);
		break;
	}
	case 3:
	{
		draw_sprite_stretched(sWukongHead,0,280,470,36,36);
		draw_sprite(sWukongHead,0,288,516);
		break;
	}
	case 4:
	{
		draw_sprite_stretched(sAkaliHead,0,280,470,36,36);
		draw_sprite(sAkaliHead,0,288,516);
		break;
	}
	case 5:
	{
		draw_sprite_stretched(sJinxHead,0,280,470,36,36);
		draw_sprite(sJinxHead,0,288,516);
		break;
	}
	case 6:
	{
		draw_sprite_stretched(sIvernHead,0,280,470,36,36);
		draw_sprite(sIvernHead,0,288,516);
		break;
	}
}
switch(global.champ2)
{
	case 1: 
	{
		draw_sprite_stretched(sZedHead,0,550,470,36,36); 
		draw_sprite(sZedHead,0,558,516);
		break;
	}
	case 2:
	{
		draw_sprite_stretched(sKatHead,0,550,470,36,36); 
		draw_sprite(sKatHead,0,558,516);
		break;
	}
	case 3:
	{
		draw_sprite_stretched(sWukongHead,0,550,470,36,36); 
		draw_sprite(sWukongHead,0,558,516);
		break;
	}
	case 4:
	{
		draw_sprite_stretched(sAkaliHead,0,550,470,36,36); 
		draw_sprite(sAkaliHead,0,558,516);
		break;
	}
	case 5:
	{
		draw_sprite_stretched(sJinxHead,0,550,470,36,36); 
		draw_sprite(sJinxHead,0,558,516);
		break;
	}
	case 6:
	{
		draw_sprite_stretched(sIvernHead,0,550,470,36,36); 
		draw_sprite(sIvernHead,0,558,516);
		break;
	}
}
if gameT < 180 draw_sprite(sGame,0,480,220);
draw_text(340,490,string(oPlayer1.hp) + "%");
draw_text(610,490,string(oPlayer2.hp) + "%");
draw_set_font(global.fontShield);
draw_text(350,460,round(oPlayer1.shield));
draw_text(620,460,round(oPlayer2.shield));
draw_set_font(global.fontStocks);
draw_text(300,516,"x" + string(round(oPlayer1.stocks)));
draw_text(570,516,"x" + string(round(oPlayer2.stocks)));
