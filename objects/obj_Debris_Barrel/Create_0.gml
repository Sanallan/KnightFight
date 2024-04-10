/// @description Insert description here
// You can write your code in this editor
sprite_index = choose(spr_BarrelPart1,spr_BarrelPart2,spr_BarrelPart3,spr_BarrelPart4,spr_BarrelPart5,spr_BarrelPart6);

image_angle = random(360);

speed     = 3 + random_range(0, 2);
direction = random(360);

alarm[0] = random_range(180,240);
fade = false;