/// @description Init Death
if (!dying) {
	audio_play_sound(snd_hurt, 1, false);
}
hspeed = 0;
vspeed = 0;
dying = true;