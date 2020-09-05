if(distance_to_object(obj_player) < 1){
	camera_set_view_target(view_camera[view_current], player_id);
	instance_destroy();
}