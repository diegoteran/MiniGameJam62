
event_inherited();

if(warp){
	var warping_direction = facing_direction;
if(facing_direction == 270 || facing_direction ==90){
warping_direction += warp_rot;
}

var y_dist = lengthdir_y(warp_dist, warping_direction);
var x_dist = lengthdir_x(warp_dist, warping_direction);
	draw_sprite_ext(spr_player_shadow, 0, x+x_dist, y+y_dist, 1, 1, 0,c_white, 0.5);	
}

if(room == rm_abyss && anim_speed_x > 0){
		draw_set_font(fnt_speech_bubble);
		draw_set_color(c_white);
		draw_text(x, y - 20, "Nah");
}

if(falling){return;}
if(warp || ghost || shrunk){
	var time_left = 0;
		if(warp){
			time_left = (warp_rate - warp_timer) / warp_rate;
		}else if(ghost){
			time_left = (ghost_rate - ghost_timer) / ghost_rate;	
		} else if(shrunk){
			time_left = (shrink_rate - shrink_timer) / shrink_rate;
		}
	var bar_color = c_white;
	if(ghost){ bar_color = c_red;}
	if(warp){ bar_color = c_purple;}
	if(shrunk){ bar_color = c_fuchsia;}
	draw_set_color(bar_color);
	var bar_size = shrunk ? abs(sprite_width) * 2 : abs(sprite_width);
	draw_rectangle(x - (bar_size/2), y + bar_size, x - bar_size/2 + (time_left*bar_size), y+(bar_size-5), false);
	draw_set_color(c_white);
	draw_rectangle(x - (bar_size/2), y + (bar_size), (x +(bar_size/2)), y+(bar_size-5), true);

}

