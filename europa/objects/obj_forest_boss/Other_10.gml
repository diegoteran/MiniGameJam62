/// @description kill and spawn gem
// You can write your code in this editor
id_gem = instance_create_layer(x, y, "Instances", obj_gem);

variable_instance_set(id_gem, "sprite_index", spr_crystal_ghost)

instance_destroy();