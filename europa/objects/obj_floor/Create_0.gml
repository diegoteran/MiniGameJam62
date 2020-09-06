tilesTall = floor((sprite_height * image_yscale)/20)
tileswide = floor((sprite_width * image_xscale)/90)

depth = 25 * ((room_height-y)/room_height) + 25 * ((room_width-x)/room_width);

//for(var xt = 0; xt < tileswide; xt++){
//	for(var yt = 0;	yt < tilesTall; yt++){
//		var tileY = 20*yt + sprite_get_height(spr_space_floor)/2;
//		var tileX = ((tilesTall - yt) * 5) + xt*32 + sprite_get_width(spr_space_floor)/2
//		instance_create_layer(tileX+x, tileY+y, "Instances", obj_space_floor);
//	}
//}