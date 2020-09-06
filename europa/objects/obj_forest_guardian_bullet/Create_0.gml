/// @description Insert description here
// You can write your code in this editor
event_inherited();
part_system = part_system_create();
part_emitter = part_emitter_create(part_system);
part_bullet = part_type_create();
part_type_alpha2(part_bullet, 1, 0);
part_type_color3(part_bullet, c_white, c_yellow, c_red);
part_type_life(part_bullet, 20, 40);