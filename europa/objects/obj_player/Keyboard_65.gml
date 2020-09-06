if(dying || !can_move){return;}
hspeed = -1*walk_speed


if(!warp and !shrunk){
	facing_direction = 0;
	if (ghost) {
		sprite_index = spr_ghost_side;
	} else { 
		sprite_index = spr_player_side;
	}
    image_xscale = -1
}
