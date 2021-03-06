/// @description Warp Start Event
if(warp_ready){
	warp = true;
	switch(facing_angle){
		case 0:
		case 180:
			sprite_index = spr_flosswarp_side;
			image_xscale *= -1;
			break;
		case 90:
			sprite_index = spr_flosswarp_up;
			break;
		case 270:
			sprite_index = spr_flosswarp_down;
			break;
	}
	y += lengthdir_y(warp_dist, facing_angle);
	x += lengthdir_x(warp_dist, facing_angle);
	ability_timer = 0;

	facing_angle = (facing_angle + 180)%360;
}