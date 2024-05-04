//CODE FOR SHADOW vvv
//Turned into commented code because shadow does not line up once oscillating begins
//Grassy Room Floor
//if (global.roomBiome = 0) {
	//draw_sprite_ext(spr_Shadow_Grass_Small,0,x,y+10,1,1,0,c_white,1);
//}


//Draw Self Oscillating
if (oscillating = true) {
	draw_sprite_ext(sprite_index, image_index, x, y+zmod+shift, 1, 1, image_angle, c_white, 1)	
} else {
//Draw Sprite Before Oscillating
	draw_sprite_ext(sprite_index, image_index, x, y+zmod, 1, 1, image_angle, c_white, 1)
}