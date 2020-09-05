/// @description Ghost Start Event
// You can write your code in this editor

if (!ghost_ready or !ghost_enabled) {
	return;
}

audio_play_sound(snd_ghost, 1, false);
ghost = true
ghost_timer = 0;