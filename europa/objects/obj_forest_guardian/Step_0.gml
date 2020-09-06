/// @description Fire bullets
// You can write your code in this editor
bullet_timer += 1;
if (bullet_rate <= bullet_timer) {
	audio_play_sound(snd_forest_bullet_throw, 1, false);
	instance_create_layer(x, y, "Instances", obj_forest_guardian_bullet);
	bullet_timer = 0;
}