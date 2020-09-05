if(falling || !can_move){return;}
hspeed = -1*walk_speed


if(!warp and !ghost and !shrunk){
	facing_direction = 0;
	sprite_index = spr_player_side;
    image_xscale = -1
}
