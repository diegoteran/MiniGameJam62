/// @description movement
// You can write your code in this editor
speed = 1
player_id = instance_nearest(x, y, obj_player);
px = variable_instance_get(player_id, "x");
py = variable_instance_get(player_id, "y");
direction = point_direction(x, y, px, py)