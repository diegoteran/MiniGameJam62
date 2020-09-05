if(falling || !can_move){return;}
vspeed = walk_speed;


if(!warp  and !ghost and !shrunk){
	facing_direction = 90;
	sprite_index= spr_player;
}
