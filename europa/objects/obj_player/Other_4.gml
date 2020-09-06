/// @description Checkpoint to nearest obj_checkpoint
// You can write your code in this editor
variable_instance_set(global.active_cp, "sprite_index", spr_checkpoint)

i_id = instance_nearest(x, y, obj_checkpoint)
global.active_cp = i_id
variable_instance_set(i_id, "sprite_index", spr_checkpoint_active)
layer = layer_get_id("Instances");

switch(room){
case rm_forest_entrance:
	audio_stop_sound(snd_overworld_bg);
	warp_enabled = false;
	shrink_enabled = false;
	if (!global.music) {
	   audio_play_sound(snd_the_woods_c, 0, true);
	   global.music = true;
    }
	break;
case rm_overworld: 
	global.music = false;
	audio_stop_sound(snd_the_woods_c);
	audio_stop_sound(snd_space_bg);
	audio_stop_sound(snd_candyland_bg);
	audio_play_sound(snd_overworld_bg, 0, true);
	break;
case rm_space_1a:
	audio_stop_sound(snd_overworld_bg);
	ghost_enabled = false;
	shrink_enabled = false;
	if (!global.music) {
		audio_play_sound(snd_space_bg, 0, true);
		global.music = true;
	}
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
}