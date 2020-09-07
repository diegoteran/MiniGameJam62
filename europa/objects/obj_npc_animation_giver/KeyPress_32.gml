event_inherited();

if(place_meeting(x,y,obj_player)){
	player_id = instance_nearest(x,y,obj_player);
	variable_instance_set(player_id, power_text+"_enabled", true);
}