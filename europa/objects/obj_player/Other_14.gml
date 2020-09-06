/// @description Ghost Start Event
// You can write your code in this editor

if (!ghost_ready or !ghost_enabled) {
	return;
}

audio_play_sound(snd_ghost, 1, false);
ghost = true
ghost_timer = 0;

switch (sprite_index) {
	case (spr_player) : {
		sprite_index = spr_ghost;
		break;
	}
	case (spr_player_side) : {
		sprite_index = spr_ghost_side;
		break;
	}
	case (spr_player_up) : {
		sprite_index = spr_ghost_up;
		break;
	}
}