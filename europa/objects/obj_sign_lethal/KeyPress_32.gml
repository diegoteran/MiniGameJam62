if(!instance_exists(obj_textbox) && place_meeting(x,y,obj_player)){
	text_box = instance_create_layer(0,0,"Instances", obj_textbox);
	text_box.text = text;
	event_user(0);
}