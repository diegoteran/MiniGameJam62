var player_x = variable_instance_get(player_id, "x");
var player_y = variable_instance_get(player_id, "y");
direction = point_direction(x,y,player_x,player_y);

part_emitter_region(part_system, part_emitter, x-12, x+12, y-12,
				y+12, ps_shape_diamond, ps_distr_invgaussian);
part_emitter_burst(part_system, part_emitter, part_warp, 4);

if(distance_to_object(obj_player) < 8){
	camera_set_view_target(view_camera[view_current], player_id);
	instance_destroy();
}