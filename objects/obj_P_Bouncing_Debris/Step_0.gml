//Sprite Fading
if (fade = true)
{
    sprite_alpha -= 0.05;
	if (sprite_alpha < 0.25)
	{
	    instance_destroy();
	}
}

//Depth
depth = -bbox_bottom;

//Calculate Z Mod + Velocity
zvelocity = zvelocity + zgrav

zmod = zmod + zvelocity

// Bounces
if (zmod > 0) {
	if (bounces = 3) {
		zvelocity = -4;	
		bounces = 2;
	} else if (bounces = 2) {
		zvelocity = -2.5;	
		bounces = 1;
	} else if (bounces = 1) {
		zvelocity = -1.5;	
		bounces = 0;
	} else if (bounces = 0) {
		zmod = 0;	
	}
}

//Collision
if (place_meeting(x,y,obj_SolidParent)) {
	move_bounce_all(true);
}