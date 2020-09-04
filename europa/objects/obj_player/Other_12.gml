/// @description Warp Start Event
if(warp_ready){
	warp = true;
	sprite_index = spr_flosswarp1;
	y += lengthdir_y(warp_dist, (image_angle+90)%360);
	x += lengthdir_x(warp_dist, (image_angle+90)%360);
	ability_timer = 0;
	depth = -1*y

	image_angle = (image_angle + 180)%360;
}