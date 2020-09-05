/// @description Die and Respawn Event

dolly_id = instance_create_layer(x,y,"Instances", obj_dolly);
camera_set_view_target(view_camera[view_current], dolly_id);
dolly_id.speed = 10;
global.dolly_id = dolly_id;

room_restart();
x = variable_instance_get(global.active_cp, "x")
y = variable_instance_get(global.active_cp, "y")

image_xscale = 1;
image_yscale = 1;

falling = false;
dying = false;
speed = 0;
warp = false;
audio_play_sound(snd_hurt, 1, false);

