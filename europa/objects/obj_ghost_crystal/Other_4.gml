enabled = variable_instance_get(instance_nearest(x,y,obj_player),crystal_name);


if(!enabled){
	image_alpha = 0;
}else{
	image_alpha = 1;
}