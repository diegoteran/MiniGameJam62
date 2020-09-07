if(!instance_exists(obj_textbox) && !triggered){
	text_box = instance_create_layer(0,0,"Instances", obj_textbox);
	text_box.text = text;
	triggered = true;
}