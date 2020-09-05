/// @description Warp Stop Event
warp = false;
y += lengthdir_y(warp_dist, (facing_angle)%360);
x += lengthdir_x(warp_dist, (facing_angle)%360);

	switch(facing_angle){
		case 0:
		case 180:
			sprite_index = spr_player_side;
			image_xscale *= -1;
			break;
		case 270:
			sprite_index = spr_player;
			break;
		case 90:
			sprite_index = spr_player_up;
			break;
	}
facing_angle = (facing_angle + 180)%360;

warp_ready = false;
warp_cooldown_timer = 0;


if(place_meeting(x,y,obj_wall)){	
	dying = true;
}