if(falling||dying){return;}
vspeed = -1*walk_speed;


if(!warp  and !ghost and !shrunk){
	facing_direction = 270;
sprite_index = spr_player_up;
}
