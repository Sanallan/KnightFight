/// @description Insert description here
// You can write your code in this editor
audio_play_sound_at(
	snd_Ambient_Waterfall,
	x,y,0,
	obj_SoundControl.max_distance_to_be_heard,
	obj_SoundControl.start_dropping_off_at,
	obj_SoundControl.multiplier,
	true,1
);

audio_sound_gain(snd_Ambient_Waterfall,0.02,0);