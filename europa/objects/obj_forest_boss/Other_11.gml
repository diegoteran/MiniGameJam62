/// @description damage
// You can write your code in this editor
if (!killable) {
	return;
}
health -= 1;
sprite_index = spr_forest_boss_hurt;
killable = false;
if (health == 0) {
	event_user(0);
}