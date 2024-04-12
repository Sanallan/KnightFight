//Change Sprite if Mouse Hovering
if place_meeting(x,y,obj_Mouse) 
{
	
	if (clicked = false) {
		image_xscale = 1.1;
		image_yscale = 1.1;
		image_index = 1;	
		
		if (global.clicking = true) {
			clicked = true;
			//audio_play_sound(snd_Button_Click,1,false);
			
			alarm[0] = 1;
			
			image_xscale = 0.7;
			image_yscale = 0.7;
		}
	}
} else {
	image_index=0;	
}

image_xscale = scr_approach(image_xscale,1,0.04);
image_yscale = scr_approach(image_yscale,1,0.04);