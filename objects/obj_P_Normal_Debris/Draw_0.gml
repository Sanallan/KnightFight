/// @description Draw Self + Shadow

//Grassy Room Floor
if (global.roomBiome = 0) {
	draw_sprite_ext(spr_Shadow_Grass_Small,0,x,y+10,1,1,0,c_white,sprite_alpha);
}

//Draw Self
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, sprite_alpha)