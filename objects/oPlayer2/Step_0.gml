controller = global.controller2
if state != PLAYERSTATE.STUN && oPlayer1.champ == champ 
{
	if iFrames % 16 >= 8 image_blend = make_color_rgb(150,150,150);
	else image_blend = make_color_rgb(210,210,210);
}
else
{
	if iFrames % 16 >= 8 image_blend = make_color_rgb(170,170,170);
	else image_blend = (c_white);
}
keyLeft = keyboard_check(vk_left) || gamepad_button_check(controller,gp_padl) || gamepad_axis_value(controller,gp_axislh) < -0.3;
keyRight = keyboard_check(vk_right) || gamepad_button_check(controller,gp_padr) || gamepad_axis_value(controller,gp_axislh) > 0.3;
keyDown = keyboard_check(vk_down) || gamepad_button_check(controller,gp_padd) || gamepad_axis_value(controller,gp_axislv) > 0.15;
keyUp = keyboard_check(vk_up) || gamepad_button_check(controller,gp_padu) || gamepad_axis_value(controller,gp_axislv) < -0.15;
jump = keyboard_check_pressed(vk_control) || gamepad_button_check_pressed(controller,gp_face3) || gamepad_button_check_pressed(controller,gp_face4);
holdjump = keyboard_check(vk_control) || gamepad_button_check(controller,gp_face3) || gamepad_button_check(controller,gp_face4);
keyAttack = keyboard_check_pressed(vk_shift) || gamepad_button_check_pressed(controller,gp_face2);
keySpecial = keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(controller,gp_face1);
keyShield = keyboard_check(vk_alt) || gamepad_button_check(controller,gp_shoulderl) || gamepad_button_check(controller,gp_shoulderlb) || gamepad_button_check(controller,gp_shoulderr) || gamepad_button_check(controller,gp_shoulderrb);

event_inherited();