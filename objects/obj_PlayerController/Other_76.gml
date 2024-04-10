/// @description Insert description here
// You can write your code in this editor

sprite_broadcast("foot1", function() {
	if (state = PLAYERSTATE.FREE) {
		audio_play_sound(snd_Footstep_1,0,false);
	}
});

sprite_broadcast("foot2", function() {
	if (state = PLAYERSTATE.FREE) {
		audio_play_sound(snd_Footstep_2,0,false);
	}
});

if dash = 2 {
	sprite_broadcast("foot1", function() {
		instance_create_depth(x+(random_range(-10,10)),y+(random_range(15,35)),2,obj_Dust);
	});
	sprite_broadcast("foot2", function() {
		instance_create_depth(x+(random_range(-10,10)),y+(random_range(15,35)),2,obj_Dust);
	});
}