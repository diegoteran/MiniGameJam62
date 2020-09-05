var unlock = true;
for (var i = 0; i < instance_number(obj_key); ++i;)
    {
    key = instance_find(obj_key, i);
	if (key.pair_id == pair_id) {	
		unlock = false;
		break;
		}
    }

if (unlock && point_distance(x,y,obj_player.x, obj_player.y) < sprite_width) {
	instance_destroy();	
}