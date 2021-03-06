/// @description Warp Start Event
if(warp_ready && warp_enabled){
var warping_direction = facing_direction;
if(facing_direction == 270 || facing_direction ==90){
warping_direction += warp_rot;
}

var y_dist = lengthdir_y(warp_dist, warping_direction);
var x_dist = lengthdir_x(warp_dist, warping_direction);
		if(place_meeting(x+x_dist,y+y_dist,obj_wall)){
			//Add failed to warp sound
			audio_play_sound(snd_hurt,1,false);
			return;
	}
	
	warp = true;
	audio_play_sound(snd_warp_to, 1, false);
	
	var fadeout1 = instance_create_layer(x,y, "Instances", obj_fadeout);
	fadeout1.sprite_index= sprite_index;
	fadeout1.fade_out = 10;
	
	switch(facing_direction){
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
	
	var fadeout2 = instance_create_layer(x+(x_dist/2), y+(y_dist/2), "Instances", obj_fadeout);
	fadeout2.sprite_index= sprite_index;
		fadeout2.fade_out = 20;
	
	
	x+=x_dist;
	y+=y_dist;
	
	dolly_id = instance_create_layer(x-x_dist,y-y_dist,"Instances", obj_dolly);
	camera_set_view_target(view_camera[view_current], dolly_id);
	global.dolly_id = dolly_id;
	
	warp_timer = 0;

	facing_direction = (facing_direction + 180)%360;
	

	
}