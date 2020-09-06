/// @description Make player slide
var original_mask = mask_index;
mask_index = other.mask_index;
if (other.hspeed != 0) {
	if (other.vspeed != 0) {
		other.vspeed = 0;
	}
	if (!place_free(other.x + other.sprite_width/2 + other.hspeed*collision_coeff, other.y)) {
		other.can_move = true;	
	} else {
		other.can_move = false;
	}
} else if(other.vspeed != 0) {
	if(!place_free(other.x, other.y + sign(vspeed)*other.sprite_height/2 + other.vspeed*collision_coeff)) {
		other.can_move = true;
	} else {
		other.can_move = false;	
	}
}
mask_index = original_mask;


