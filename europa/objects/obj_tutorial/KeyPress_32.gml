cur_text += 1;
if(cur_text >= array_length_1d(text)){
	player = instance_nearest(x,y,obj_player);
	player.anim_x = true;
	player.anim_speed_x = 2;
	player.anim_stop_posx = 450;
	player.sprite_index = spr_player_side;
instance_destroy();
}
