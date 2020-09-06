if(dying || !can_move){return;}
vspeed = walk_speed;


if(!warp and !shrunk){
	facing_direction = 90;
	if (ghost) {
		sprite_index = spr_ghost;
	} else { 
		sprite_index= spr_player;
	}
}
