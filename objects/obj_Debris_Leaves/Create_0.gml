/// @description Insert description here
// You can write your code in this editor
sprite_index = choose(spr_Leaf1,spr_Leaf2,spr_Leaf3,spr_Leaf4,spr_Leaf5);

image_angle = random(360);

speed     = 3 + random_range(0, 2);
direction = random(360);

alarm[0] = random_range(180,240);
fade = false;