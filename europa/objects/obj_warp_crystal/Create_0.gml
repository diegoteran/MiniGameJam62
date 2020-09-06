crystal_name = "warp_crystal"
enabled = variable_instance_get(instance_nearest(x,y,obj_player),crystal_name);

if(!enabled){
	image_alpha = 0;
	image_blend = c_gray;	
}else{
	image_alpha = 1;
	image_blend = c_white;	
}