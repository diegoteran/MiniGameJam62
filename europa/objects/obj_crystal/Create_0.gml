crystal_name = "warp_crystal"
enabled = variable_instance_get(instance_nearest(x,y,obj_player),crystal_name);

if(enabled){
	image_blend = c_gray;	
}else{
	image_blend = c_white;	
}