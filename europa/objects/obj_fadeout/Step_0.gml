image_alpha -= (1/fade_out);

if(image_alpha <= 0){
	instance_destroy();	
}