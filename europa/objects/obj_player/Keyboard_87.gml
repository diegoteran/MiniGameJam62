if(falling||dying){return;}
vspeed = -1*walk_speed;


if(!warp  and !ghost){
	facing_angle = 270;
sprite_index = spr_player_up;
}