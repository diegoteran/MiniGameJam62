/// @description gem animation and send to overworld
// You can write your code in this editor
event_inherited();

variable_instance_set(instance_nearest(x,y,obj_player), crystal_name, true);

room_goto(rm_overworld);
obj_player.x = 198;
obj_player.y = 103;
