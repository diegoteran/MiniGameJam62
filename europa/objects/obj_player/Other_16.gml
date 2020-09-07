/// @description Shrink Start Event
if(shrink_ready and shrink_enabled){
	audio_play_sound(snd_shrink, 1, false);
	shrunk = true;
	mask_index = spr_player_shrunk;
	switch(facing_direction){
		case 0:
		case 180:
			sprite_index = spr_player_shrunk_side;
			break;
		case 90:
			sprite_index = spr_player_shrunk;
			break;
		case 270:
			sprite_index = spr_player_shrunk_up;
			break;
	}
	shrink_timer = 0;
}
