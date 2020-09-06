if(dying || !can_move){return;}
hspeed = walk_speed;


if(!warp and !shrunk){
	facing_direction = 180;
	if (ghost) {
		sprite_index = spr_ghost_side;
	} else { 
		sprite_index = spr_player_side;
	}
	image_xscale = 1;
}
