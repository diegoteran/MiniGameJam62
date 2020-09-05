
event_inherited();

if(warp){
var time_left = (warp_rate- ability_timer) / warp_rate;
draw_set_color(c_purple);
draw_rectangle(x - (sprite_width/2), y + (sprite_width/2)+4, (x + time_left*(sprite_width))-(sprite_width/2), y+(sprite_width/2), false)
draw_set_color(c_white);
draw_rectangle(x - (sprite_width/2), y + (sprite_width/2)+4, (x +(sprite_width/2)), y+(sprite_width/2), true)

}

