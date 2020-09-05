/// @description Shrink Start Event
if(shrink_ready){
	shrunk = true;
	shrink_dist = 0.5 * shrink_scale * sprite_width;
	sprite_index = spr_player_shrunk;
	switch(facing_angle){
		case 0:
		case 180:
			x += shrink_dist;
			break;
		case 90:
			y += shrink_dist;;
			break;
		case 270:
			y -= shrink_dist;;
			break;
	}
	shrink_timer = 0;
}
