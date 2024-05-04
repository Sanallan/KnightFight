/// @description Insert description here
// You can write your code in this editor
instance_destroy();

global.schloot_collected += 30;

audio_sound_pitch(snd_Loot_30,random_range(0.9,1.1));
audio_play_sound(snd_Loot_30,0.5,0);