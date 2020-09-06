/// @description Shrink stop event
	shrunk = false;
	audio_play_sound(snd_grow, 1, false);
	mask_index = spr_player;
	switch(facing_direction){
		case 0:
		case 180:
			sprite_index = spr_player_side;
			break;
		case 270:
			sprite_index = spr_player;
			break;
		case 90:
			sprite_index = spr_player_up;
			break;
	}

shrink_ready = false;
shrink_cooldown_timer = 0;