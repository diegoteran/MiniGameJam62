var player_x = variable_instance_get(player_id, "x");
var player_y = variable_instance_get(player_id, "y");
direction = point_direction(x,y,player_x,player_y);

if(distance_to_object(obj_player) < 8){
	camera_set_view_target(view_camera[view_current], player_id);
	instance_destroy();
}