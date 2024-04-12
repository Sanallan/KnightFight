//Change Sprite if Mouse Hovering
if place_meeting(x,y,obj_Mouse) 
{
	if (clicked = false) {
		image_index=1;	
		if (global.clicking = true) {
			clicked = true;
			audio_play_sound(snd_Button_Click,1,false);
			alarm[0]=1;
		}
	}
} else {
	image_index=0;	
}
