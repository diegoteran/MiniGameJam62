
event_inherited();

if(warp){
	var time_left = (warp_rate- warp_timer) / warp_rate;
	draw_set_color(c_purple);
	draw_rectangle(x - 32, y + 42, (x - 32) + (time_left*64), y+52, false)
	draw_set_color(c_white);
	draw_rectangle(x - 32, y + 42, (x +32), y+52, true)

}
