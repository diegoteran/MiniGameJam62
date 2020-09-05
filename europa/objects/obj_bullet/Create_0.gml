/// @description Go to player.
// You can write your code in this editor
speed = 3;

// Get player position
p_id = instance_nearest(x, y, obj_player);
p_x = variable_instance_get(p_id, "x");
p_y = variable_instance_get(p_id, "y");
direction = point_direction(x, y, p_x, p_y);