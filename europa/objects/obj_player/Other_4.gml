if(room != rm_abyss){
	//Checkpoint to nearest obj_checkpoint
	variable_instance_set(global.active_cp, "sprite_index", spr_checkpoint)
	
	i_id = instance_nearest(x, y, obj_checkpoint)
	global.active_cp = i_id
	variable_instance_set(i_id, "sprite_index", spr_checkpoint_active)
	layer = layer_get_id("Instances");
}

switch(room){
case rm_forest_1:
	audio_stop_sound(snd_overworld_bg);
	warp_enabled = false;
	shrink_enabled = false;
	if (!global.music) {
	   audio_play_sound(snd_the_woods_c, 0, true);
	   global.music = true;
    }
	break;
case rm_forest_boss:
	audio_stop_sound(snd_the_woods_c);
	audio_stop_sound(snd_the_woods_b);
	audio_play_sound(snd_the_woods_b, 0, true);
	break;
case rm_overworld:
	warp_enabled = false;
	shrink_enabled = false;
	ghost_enabled = false;
	global.music = false;
	audio_stop_sound(snd_the_woods_c);
	audio_stop_sound(snd_the_woods_b);
	audio_stop_sound(snd_space_bg);
	audio_stop_sound(snd_candyland_bg);
	audio_play_sound(snd_overworld_bg, 0, true);
	break;
case rm_space_1a:
	warp = false;
	audio_stop_sound(snd_overworld_bg);
	ghost_enabled = false;
	shrink_enabled = false;
	if (!global.music) {
		audio_play_sound(snd_space_bg, 0, true);
		global.music = true;
	}
	break;
case rm_space_2a:
	warp = false;
	break;
case rm_space_3a:
	anim_y = true;
	warp = false;
	anim_speed_y = 5;
	anim_stop_posy = 400;
	break;
case rm_candy:
	audio_stop_sound(snd_overworld_bg);
	ghost_enabled = false;
	shrink_enabled = false;
	if (!global.music) {
		audio_play_sound(snd_candyland_bg, 0, true);
		global.music = true;
	}
	break;
case rm_win:
	audio_stop_sound(snd_overworld_bg);
	audio_play_sound(snd_bg_music, 0, true);
	break;
}