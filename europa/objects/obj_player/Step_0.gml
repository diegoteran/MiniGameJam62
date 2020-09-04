if(place_meeting(x+hspeed,y, obj_wall)){
	hspeed = 0;
}
	
if(place_meeting(x,y+vspeed, obj_wall)){
	vspeed = 0;
}

depth = -1*y
	
	
if(dying){
	image_xscale -= 0.1;
	image_yscale -= 0.1;
	if(image_xscale <= 0){
		event_user(1);
	}
}
	