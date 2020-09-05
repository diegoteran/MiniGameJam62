/// @description Shrink stop event
	shrunk = false;
	shrink_dist = 0.5 * sprite_width;
	switch(facing_direction){
		case 0:
		case 180:
			x -= shrink_dist;;
			sprite_index = spr_player_side;
			break;
		case 270:
			y +=  shrink_dist;;
			sprite_index = spr_player;
			break;
		case 90:
			y -=  shrink_dist;;
			sprite_index = spr_player_up;
			break;
	}

shrink_ready = false;
shrink_cooldown_timer = 0;