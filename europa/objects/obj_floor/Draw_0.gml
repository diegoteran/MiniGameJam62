
//draw_set_color(c_white);
//draw_text(x,y,depth);

for(var xt = 0; xt < tileswide; xt++){
	for(var yt = 0;	yt < tilesTall; yt++){
		var tileY = 20*yt + floor(sprite_get_height(spr_space_floor)/2);
		var tileX = ((tilesTall - yt) * 5) + xt*31 + floor(sprite_get_width(spr_space_floor)/2);
		draw_sprite_ext(spr_space_floor, 0, tileX+x, tileY+y,1,1,0,c_white,1);
	}
}