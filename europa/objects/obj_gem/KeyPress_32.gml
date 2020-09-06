/// @description gem animation and send to overworld
// You can write your code in this editor
event_inherited();

if(!place_meeting(x,y,obj_player)){
return;	
}

variable_instance_set(instance_nearest(x,y,obj_player), crystal_name, true);

room_goto(rm_overworld);
obj_player.x = 992;
obj_player.y = 192;
