function PlayerState_Attack() {
	xspd = 0;
	yspd = 0;
	
	//start of attack
	for ( var i = 0; i <= 7; i++) {
		if (sprite_index != attackSprite[i]) {
				sprite_index = attackSprite[face];
				image_speed = 1.2;
				audio_stop_sound(snd_Footstep_1);
				audio_stop_sound(snd_Footstep_2);
				if (!audio_is_playing(snd_SwordSwing1) && !audio_is_playing(snd_SwordSwing2) && !audio_is_playing(snd_SwordSwing3))
				{
				audio_play_sound(choose(snd_SwordSwing1,snd_SwordSwing2,snd_SwordSwing3),1,false);
				}
			ds_list_clear(hitByAttack);
		}
	}
		mask_index = attackHbox[face]
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, obj_LowWall, hitByAttackNow, false);
	if (hits > 0) {
		for (var i = 0; i < hits; i++) {
			//if this instance has not yet been hit by the attack
			var hitID = hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack, hitID) == -1) {
				ds_list_add(hitByAttack, hitID);
				with(hitID) {
			
				}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index = spr_Knight_Mask;

	if (animation_end()) {
		sprite_index = sprite[face];
		state = PLAYERSTATE.FREE;
	}
}