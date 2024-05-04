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

//Collision
if (place_meeting(x,y,obj_SolidParent)) {
	move_bounce_all(true);
}