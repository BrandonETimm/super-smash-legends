controller = global.controller1
if state != PLAYERSTATE.STUN 
{
	if iFrames % 16 >= 8 image_blend = make_color_rgb(170,170,170);
	else image_blend = (c_white);
}
keyLeft = keyboard_check(ord("A")) || gamepad_button_check(controller,gp_padl) || gamepad_axis_value(controller,gp_axislh) < -0.3;
keyRight = keyboard_check(ord("D")) || gamepad_button_check(controller,gp_padr) || gamepad_axis_value(controller,gp_axislh) > 0.3;
keyDown = keyboard_check(ord("S")) || gamepad_button_check(controller,gp_padd) || gamepad_axis_value(controller,gp_axislv) > 0.15;
keyUp = keyboard_check(ord("W")) || gamepad_button_check(controller,gp_padu) || gamepad_axis_value(controller,gp_axislv) < -0.15;
jump = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(controller,gp_face3) || gamepad_button_check_pressed(controller,gp_face4);
holdjump = keyboard_check(vk_space) || gamepad_button_check(controller,gp_face3) || gamepad_button_check(controller,gp_face4);
keyAttack = keyboard_check_pressed(ord("Q")) || gamepad_button_check_pressed(controller,gp_face2);
keySpecial = keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(controller,gp_face1);
keyShield = keyboard_check(ord("F")) || gamepad_button_check(controller,gp_shoulderl) || gamepad_button_check(controller,gp_shoulderlb) || gamepad_button_check(controller,gp_shoulderr) || gamepad_button_check(controller,gp_shoulderrb);

event_inherited();