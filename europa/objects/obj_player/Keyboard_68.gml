if(falling){return;}
hspeed = walk_speed;


if(!warp  and !ghost and !shrunk){
	facing_direction = 180;
	sprite_index = spr_player_side;
image_xscale = 1;
}
