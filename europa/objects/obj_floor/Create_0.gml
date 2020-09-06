tilesTall = floor((sprite_height * image_yscale)/30)
tileswide = floor((sprite_width * image_xscale)/32)

//for(var xt = 0; xt < tileswide; xt++){
//	for(var yt = 0;	yt < tilesTall; yt++){
//		var tileY = 20*yt + sprite_get_height(spr_space_floor)/2;
//		var tileX = ((tilesTall - yt) * 5) + xt*32 + sprite_get_width(spr_space_floor)/2
//		instance_create_layer(tileX+x, tileY+y, "Instances", obj_space_floor);
//	}
//}