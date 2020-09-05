if(breaking){
	step +=1;
	image_alpha -= (1/breaking_time); 
	if(step >= breaking_time){
		pit = instance_create_layer(x,y,"Instances",obj_pit);
		pit.image_xscale = 0.25;
		pit.image_yscale = 0.25;
		instance_destroy();		
	}
}