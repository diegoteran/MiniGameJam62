/// @description Fire bullets
// You can write your code in this editor
bullet_timer += 1;
if (bullet_rate <= bullet_timer) {
	instance_create_layer(x, y, "Instances", obj_forest_guardian_bullet);
	bullet_timer = 0;
}