for (var i = 0; i <= 11; i++)
{
	if gamepad_is_connected(i)
	{
		controller1 = i;
		i=12;
	}
}
for (var i = 0; i <= 11; i++)
{
	if gamepad_is_connected(i) && controller1 != i
	{
		controller2 = i;
		i=12;
	}
}
window_set_fullscreen(true);
next = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(controller1,gp_face1) || keyboard_check_pressed(vk_shift) || gamepad_button_check_pressed(controller2,gp_face1);
if next room_goto_next();