/// @description Init Death

if(anim_y){return;}

if (!dying) {
	audio_play_sound(snd_hurt, 1, false);
}
dying = true;