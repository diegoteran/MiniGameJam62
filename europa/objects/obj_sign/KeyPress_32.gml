if(place_meeting(x,y,obj_player) && !instance_exists(obj_textbox)){
	text_box = instance_create_layer(0,0,"Instances", obj_textbox);
	text_box.text = text;
}