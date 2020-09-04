if(warp){
var time_left = (warp_rate- ability_timer) / warp_rate;
draw_set_color(c_white);
draw_rectangle(x - 32, y + 10, (x +32), y+20, true)
draw_set_color(c_green);
draw_rectangle(x - 32, y + 10, (x - 32) + (time_left*64), y+20, false)
}