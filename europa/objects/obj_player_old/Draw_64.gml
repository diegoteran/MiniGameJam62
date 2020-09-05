
var sprite_color = warp_ready ? c_white : c_gray;
draw_sprite_ext(spr_warp, 0, 10, 10, 1, 1, 0, sprite_color, 1);

if(!warp_ready){
	draw_set_font(fnt_ui);
	draw_set_color(c_white);
	draw_text(74,32,string_format(floor(warp_cooldown - warp_cooldown_timer)/60,0,0))
}