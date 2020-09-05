var unlock = true;
for (var i = 0; i < instance_number(obj_key); ++i;)
    {
    key = instance_find(obj_key, i);
	if (key.pair_id == pair_id) {	
		unlock = false;
		break;
		}
    }

if (unlock && distance_to_object(obj_player) < sprite_width * 0.5) {
	instance_destroy();	
}