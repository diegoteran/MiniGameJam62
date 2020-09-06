/// @description Checkpoint to nearest obj_checkpoint
// You can write your code in this editor
variable_instance_set(global.active_cp, "sprite_index", spr_checkpoint)

i_id = instance_nearest(x, y, obj_checkpoint)
global.active_cp = i_id
variable_instance_set(i_id, "sprite_index", spr_checkpoint_active)
layer = layer_get_id("Instances");
if (room == rm_forest_entrance) {
	warp_enabled = false;
	shrink_enabled = false;
}