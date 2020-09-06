/// @description Shrink Start Event
if(shrink_ready and shrink_enabled){
	audio_play_sound(snd_shrink, 1, false);
	shrunk = true;
	shrink_dist = 0.5 * shrink_scale * sprite_width;
	sprite_index = spr_player_shrunk;
	mask_index = spr_player_shrunk;
	switch(facing_direction){
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
