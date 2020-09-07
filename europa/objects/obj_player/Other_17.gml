/// @description Shrink stop event
	shrunk = false;
	audio_play_sound(snd_grow, 1, false);
	mask_index = spr_player;
	if (!place_free(x,y)) {
		if (place_free(x + sprite_width*0.25, y)) {
			x += sprite_width*0.25;	
		} else if (place_free(x - sprite_width*0.25, y)) {
			x -= sprite_width*0.25;	
		} else if (place_free(x, y + sprite_height*0.25)) {
			y += sprite_height*0.25;	
		} else if (place_free(x, y - sprite_height*0.25)) {
			y -= sprite_height*0.25;	
		} else if (place_free(x + sprite_width*0.5, y)) {
			x += sprite_width*0.5;	
		} else if (place_free(x - sprite_width*0.5, y)) {
			x -= sprite_width*0.5;	
		} else if (place_free(x, y + sprite_height*0.5)) {
			y += sprite_height*0.5;	
		} else if (place_free(x, y - sprite_height*0.5)) {
			y -= sprite_height*0.5;	
		} else {
			event_user(0);
		}
	}
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