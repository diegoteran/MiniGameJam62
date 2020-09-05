

if (!can_move && !place_meeting(x, y, obj_ice_tile)) {
	can_move = true;
}

// Check for Collissions
if (!place_free(x + hspeed*collision_coeff, y)) {
	hspeed = 0;
}

if (!place_free(x, y + vspeed*collision_coeff)) {
	vspeed = 0;
}


if(place_meeting(x,y+vspeed, obj_wall)){
	vspeed = 0;
}

//Update depth
depth = -1*((y+(abs(sprite_width)/2)));
	
// Special States
if(dying){
	if (falling) {
		image_xscale -= (1/(140))*(abs(image_xscale)/image_xscale);
		image_yscale -= 1/(140)*(abs(image_yscale)/image_yscale);
		if(abs(image_xscale) <= 0.1 ||abs(image_yscale) <= 0.1){
			event_user(1);
		}
	} else {
		event_user(1)
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

if (shrunk) {
	shrink_timer += 1;
	if (shrink_timer >= shrink_rate) {
		event_user(7);
	}
}

if (!shrink_ready) {
	shrink_cooldown_timer += 1;
	if (shrink_cooldown_timer >= shrink_cooldown) {
		shrink_ready = true;
	}
}
