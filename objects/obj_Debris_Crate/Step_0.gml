/// @description Insert description here
// You can write your code in this editor
hspeed = scr_approach(hspeed, 0, 0.1);
vspeed = scr_approach(vspeed, 0, 0.1);

if (fade = true)
{
    image_alpha -= 0.05;
	if (image_alpha < 0.25)
	{
	    instance_destroy();
	}
}

    
