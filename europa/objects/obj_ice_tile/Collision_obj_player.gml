/// @description Make player slide

if (other.hspeed != 0) {
	// Next move is not on the tile
	if(!place_meeting(other.x + (other.hspeed * collision_coeff), other.y, obj_ice_tile)) {
		other.can_move = true;
		other.hspeed = 0;
	} else if(place_free(other.x + (other.hspeed * collision_coeff), other.y)) {
		if (other.vspeed != 0) {
			other.vspeed = 0;
		}
		other.can_move = false;
	} else {
		other.hspeed = 0;
		other.can_move = true;
	}
} else if (other.vspeed != 0) {
	if(!place_meeting(other.x, other.y + (other.vspeed * collision_coeff), obj_ice_tile)) {
		other.can_move = true;
		other.vspeed = 0;
	} else if(place_free(other.x, other.y + (other.vspeed * collision_coeff))) {
		other.can_move = false;
	} else {
		other.vspeed = 0;
		other.can_move = true;
	}
}


