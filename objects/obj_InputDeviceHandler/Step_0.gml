/// @description Switch Inputs

//Check for Keyboard Input
if (global.any_keyboard_pressed = 0) 
{
	if ((keyboard_check(vk_right))||(keyboard_check(vk_left))||(keyboard_check(vk_down))||(keyboard_check(vk_up))) 
	{
		global.any_keyboard_pressed = 1;
		global.any_controller_pressed = 0;
	}
}

//Check for Controller Input
for (i=gp_face1; i<gp_axisrv; i++) 
{
    if gamepad_button_check(0, i) 
	{
        global.any_controller_pressed = 1;
		global.any_keyboard_pressed = 0;
        exit;
    }
}