event_inherited();
switch(global.champ1)
{
	case 1: champ = CHAMPION.ZED; break;
	case 2: champ = CHAMPION.KAT; break;
	case 3: champ = CHAMPION.WUKONG; break;
	case 4: champ = CHAMPION.AKALI; break;
	case 5: champ = CHAMPION.JINX; break;
	case 6: champ = CHAMPION.IVERN; break;
}
switch(champ)
{
	case CHAMPION.ZED: sprite_index = sZed; break;
	case CHAMPION.KAT: sprite_index = sKat; break;
	case CHAMPION.WUKONG: sprite_index = sWukong; break;
	case CHAMPION.AKALI: sprite_index = sAkali; break;
	case CHAMPION.JINX: sprite_index = sJinx; break;
	case CHAMPION.IVERN: sprite_index = sIvern; break;
}