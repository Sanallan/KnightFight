/// @description Insert description here
// You can write your code in this editor
sprite_index = choose(spr_Pot1_Part1,spr_Pot1_Part2,spr_Pot1_Part3,spr_Pot1_Part4,spr_Pot1_Part5);

image_angle = random(360);

speed     = 3 + random_range(-1, 2);
direction = random(360);

alarm[0] = random_range(180,240);
fade = false;