if(breaking){
	step +=1;
	if(step%15 == 0){
		image_angle = 5 * shake_coefficient; 
		shake_coefficient *= -1;
	}
	if(step >= breaking_time){
		falling = true;		
	}
}
if(falling){
	image_xscale -= 0.1;
	image_yscale -= 0.1;
	if(image_xscale <= 0 || image_yscale <= 0){
		pit = instance_create_layer(x-32,y-32,"Instances",obj_pit);
		pit.image_xscale = 0.5;
		pit.image_yscale = 0.5;
		instance_destroy();
	}
	
}