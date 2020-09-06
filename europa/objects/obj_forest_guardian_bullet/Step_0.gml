/// @description Insert description here
// You can write your code in this editor
event_inherited();
part_system_depth(part_system, depth)
part_emitter_region(part_system, part_emitter, x-10, x+10, y-10,
					y+10, ps_shape_ellipse, ps_distr_gaussian);
	
part_emitter_burst(part_system, part_emitter, part_bullet, 4);
