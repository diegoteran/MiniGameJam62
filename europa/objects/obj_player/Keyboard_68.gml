if(falling){return;}
hspeed = walk_speed;


if(!warp  and !ghost and !shrunk){
	facing_angle = 180;
	sprite_index = spr_player_side;
image_xscale = 1;
}
