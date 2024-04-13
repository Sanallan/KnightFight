/// @description Insert description here
// You can write your code in this editor
sprite_index = choose(spr_Dust1,spr_Dust2,spr_Dust3);

image_xscale = random_range(0.8, 1.2);
image_yscale = image_xscale;

image_angle = random(360);

speed     = 3 + (image_index * 2) + random_range(-1, 2);
direction = random(360);