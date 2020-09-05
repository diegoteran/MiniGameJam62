
event_inherited();

if(warp || ghost){
	var time_left = 0;
		if(warp){
			time_left = (warp_rate - warp_timer) / warp_rate;
		}else if(ghost){
			time_left = (ghost_rate - ghost_timer) / ghost_rate;	
		}
	var bar_color = c_white;
	if(ghost){ bar_color = c_red;}
	if(warp){ bar_color = c_purple;}
	draw_set_color(bar_color);
	draw_rectangle(x - (sprite_width/2), y + (sprite_width), (x - (sprite_width/2)) + (time_left*(sprite_width)), y+(sprite_width-5), false)
	draw_set_color(c_white);
	draw_rectangle(x - (sprite_width/2), y + (sprite_width), (x +(sprite_width/2)), y+(sprite_width-5), true)

}

