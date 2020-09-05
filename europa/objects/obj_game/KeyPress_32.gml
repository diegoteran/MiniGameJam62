if(room == rm_menu){
	room_goto(rm_overworld);
	audio_stop_sound(snd_bg_music);
}else if (room == rm_win){
	game_end();	
}