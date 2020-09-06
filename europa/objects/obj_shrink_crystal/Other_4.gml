enabled = variable_instance_get(instance_nearest(x,y,obj_player),crystal_name);

image_alpha = 1;
if(!enabled){
	image_alpha = 0;
}