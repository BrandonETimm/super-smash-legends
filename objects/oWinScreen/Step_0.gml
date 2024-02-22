done = keyboard_check(vk_space) || gamepad_button_check(global.controller1,gp_face1) || keyboard_check(vk_shift) || gamepad_button_check(global.controller2,gp_face1);

if done 
{
	holdbutton++;
	oHold.image_speed = 1;
	
}
else 
{
	holdbutton = max(holdbutton-2,0);
	oHold.image_index = max(0,oHold.image_index-1);
	oHold.image_speed = 0;
}
if holdbutton == 48 room_goto(1);