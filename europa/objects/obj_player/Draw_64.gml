
var yOffset = 50;

// Warp Gui
if(warp_enabled){
var sprite_color = warp_ready ? c_white : c_gray;
draw_sprite_ext(spr_warp, 0, 50, yOffset, 4, 4, 0, sprite_color, 1);

if(!warp_ready){
	draw_set_font(fnt_ui);
	draw_set_color(c_white);
	draw_text(74,yOffset,string_format(floor(warp_cooldown - warp_cooldown_timer)/60,0,0))
}
yOffset += 64;
}

//Ghost gui
if(true /* Add ghost_enabled*/){
var sprite_color = ghost_ready ? c_white : c_red;
draw_sprite_ext(spr_ghost, 0, 50, yOffset, 4, 4, 0, sprite_color, 1);

if(!ghost_ready){
	draw_set_font(fnt_ui);
	draw_set_color(c_white);
	draw_text(74,yOffset,string_format(floor(ghost_cooldown_rate - ghost_cooldown_timer)/60,0,0))
}
yOffset += 64;
}


//Shrink gui
if(true /* Add shrink_enabled*/){
var sprite_color = shrink_ready ? c_white : c_gray;
draw_sprite_ext(spr_player_shrunk, 0, 50, yOffset, 4, 4, 0, sprite_color, 1);

if(!shrink_ready){
	draw_set_font(fnt_ui);
	draw_set_color(c_white);
	draw_text(74,yOffset,string_format(floor(shrink_cooldown - shrink_cooldown_timer)/60,0,0))
}
yOffset += 64;
}