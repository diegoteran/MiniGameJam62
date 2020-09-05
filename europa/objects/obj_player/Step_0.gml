



// Check for Collissions

if(place_meeting(x+hspeed,y, obj_wall)){
	hspeed = 0;
}

if(place_meeting(x,y+vspeed, obj_wall)){
	vspeed = 0;
}

depth = -1*((y+(abs(sprite_width)/2)));


// Special States
if(dying){
	image_xscale -= 0.1;
	image_yscale -= 0.1;
	if(image_xscale <= 0){
		event_user(1);
	}
}

if(warp){
	warp_timer += 1;
	if(warp_timer >= warp_rate){
		event_user(3);
	}	
}

if(!warp_ready){
	warp_cooldown_timer += 1;
	if(warp_cooldown_timer	>= warp_cooldown){
		warp_ready = true;	
	}
}
	
if (ghost) {
	ghost_timer += 1;
	if (ghost_timer >= ghost_rate) {
		event_user(5);
	}
}

if (!ghost_ready) {
	ghost_cooldown_timer += 1;
	if (ghost_cooldown_timer >= ghost_cooldown_rate) {
		ghost_ready = true;
	}
}
