if(dying || !can_move){return;}
vspeed = -1*walk_speed;


if(!warp and !shrunk){
	facing_direction = 270;
	if (ghost) {
		sprite_index = spr_ghost_up;
	} else { 
		sprite_index = spr_player_up;
	}
}
