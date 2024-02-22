for (var i = 0; i <= 11; i++)
{
	if gamepad_is_connected(i)
	{
		global.controller1 = i;
		i=12;
	}
}
for (var i = 0; i <= 11; i++)
{
	if gamepad_is_connected(i) && global.controller1 != i
	{
		global.controller2 = i;
		i=12;
	}
}

keyLeft1 = keyboard_check(ord("A")) || gamepad_button_check(global.controller1,gp_padl) || gamepad_axis_value(global.controller1,gp_axislh) < -0.3;
keyRight1 = keyboard_check(ord("D")) || gamepad_button_check(global.controller1,gp_padr) || gamepad_axis_value(global.controller1,gp_axislh) > 0.3;
keyDown1 = keyboard_check(ord("S")) || gamepad_button_check(global.controller1,gp_padd) || gamepad_axis_value(global.controller1,gp_axislv) > 0.15;
keyUp1 = keyboard_check(ord("W")) || gamepad_button_check(global.controller1,gp_padu) || gamepad_axis_value(global.controller1,gp_axislv) < -0.15;
select1 = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(global.controller1,gp_face1);
back1 = keyboard_check_pressed(ord("Q")) || gamepad_button_check_pressed(global.controller1,gp_face2);

keyLeft2 = keyboard_check(vk_left) || gamepad_button_check(global.controller2,gp_padl) || gamepad_axis_value(global.controller2,gp_axislh) < -0.3;
keyRight2 = keyboard_check(vk_right) || gamepad_button_check(global.controller2,gp_padr) || gamepad_axis_value(global.controller2,gp_axislh) > 0.3;
keyDown2 = keyboard_check(vk_down) || gamepad_button_check(global.controller2,gp_padd) || gamepad_axis_value(global.controller2,gp_axislv) > 0.15;
keyUp2 = keyboard_check(vk_up) || gamepad_button_check(global.controller2,gp_padu) || gamepad_axis_value(global.controller2,gp_axislv) < -0.15;
select2 = keyboard_check_pressed(vk_shift) || gamepad_button_check_pressed(global.controller2,gp_face1);
back2 = keyboard_check_pressed(vk_alt) || gamepad_button_check_pressed(global.controller2,gp_face2);

if !selected1
{
if keyLeft1
{
	if reset1
	{
		if player1x == 1 player1x = 3;
		else player1x--;
		reset1 = false;
	}
}
else if keyRight1
{
	if reset1
	{
		if player1x == 3 player1x = 1;
		else player1x++;
		reset1 = false;
	}
}
else if keyDown1 || keyUp1
{
	if reset1
	{
		if player1y == 1 player1y++;
		else player1y--;
		reset1 = false;
	}
}
else
{
	reset1 = true;	
}
}

if !selected2
{
if keyLeft2
{
	if reset2
	{
		if player2x == 1 player2x = 3;
		else player2x--;
		reset2 = false;
	}
}
else if keyRight2
{
	if reset2
	{
		if player2x == 3 player2x = 1;
		else player2x++;
		reset2 = false;
	}
}
else if keyDown2 || keyUp2
{
	if reset2
	{
		if player2y == 1 player2y++;
		else player2y--;
		reset2 = false;
	}
}
else
{
	reset2 = true;	
}
}

if select1
{
	selected1 = true;
	if player1x == 1
	{
		if player1y == 1 global.champ1 = 1;
		else global.champ1 = 4;
	}
	else if player1x == 2
	{
		if player1y == 1 global.champ1 = 2;
		else global.champ1 = 5;
	}
	else
	{
		if player1y == 1 global.champ1 = 3;
		else global.champ1 = 6;
	}
}
else if back1 selected1 = false;

if select2
{
	selected2 = true;
	if player2x == 1
	{
		if player2y == 1 global.champ2 = 1;
		else global.champ2 = 4;
	}
	else if player2x == 2
	{
		if player2y == 1 global.champ2 = 2;
		else global.champ2 = 5;
	}
	else
	{
		if player2y == 1 global.champ2 = 3;
		else global.champ2 = 6;
	}
}
else if back2 selected2 = false;

if selected1 && selected2 room_goto_next();