/// @description Warp Stop Event
if(falling){return;}

warp = false;
audio_play_sound(snd_warp_back, 1, false);
var fadeout1 = instance_create_layer(x,y, "Instances", obj_fadeout);
fadeout1.sprite_index= sprite_index;
fadeout1.fade_out = 10;

var y_dist = lengthdir_y(warp_dist, facing_direction);
var x_dist = lengthdir_x(warp_dist, facing_direction);

var fadeout2 = instance_create_layer(x+(x_dist/2), y+(y_dist/2), "Instances", obj_fadeout);
fadeout2.sprite_index= sprite_index;
	fadeout2.fade_out = 20;
x+=x_dist;
y+=y_dist;

switch(facing_direction){
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


dolly_id = instance_create_layer(x-x_dist,y-y_dist,"Instances", obj_dolly);
camera_set_view_target(view_camera[view_current], dolly_id);
global.dolly_id = dolly_id;
 
facing_direction = (facing_direction + 180)%360;

warp_ready = false;
warp_cooldown_timer = 0;


if(place_meeting(x,y,obj_wall)){	
	dying = true;
	can_move = false;
	speed = 0;
}