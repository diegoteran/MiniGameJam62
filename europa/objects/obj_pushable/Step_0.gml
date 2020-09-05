/// @description Insert description here
// You can write your code in this editor

if (!place_free(x + hspeed*collision_coeff, y + vspeed*collision_coeff)) {
	vspeed = 0;
	hspeed = 0;
}

if ((vspeed != 0 || hspeed != 0) && point_distance(x,y, pushed_from_x, pushed_from_y) > sprite_width * 2) {
	vspeed = 0;
	hspeed = 0;
}

player = collision_rectangle(x - sprite_width * hitbox_scale, y - sprite_height * hitbox_scale, 
					x + sprite_width * hitbox_scale, y + sprite_height * hitbox_scale,
					obj_player, false, true);

if (player) {
	pushed_from_x = x;
	pushed_from_y = y;
	var xdist = player.x - x;
	var ydist = player.y - y;
	var x_direction = abs(xdist) > abs(ydist);
	if (x_direction) {
		var new_speed = -1 * sign(xdist) * push_speed;
		if(place_free(x + new_speed*collision_coeff, y)) {
			hspeed = new_speed;
			vspeed = 0;
		} else {
			hspeed = 0;
			vspeed = 0;
		}
	} else {
		var new_speed = -1 * sign(ydist) * push_speed;
		if(place_free(x, y + new_speed*collision_coeff)) {
			hspeed = 0;
			vspeed = new_speed;
		} else {
			hspeed = 0;
			vspeed = 0;
		}
	}
}