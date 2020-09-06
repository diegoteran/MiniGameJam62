player_id = instance_nearest(x,y,obj_player);
speed = 5;

//particles
part_system = part_system_create();
part_emitter = part_emitter_create(part_system);
part_warp = part_type_create();
part_type_color3(part_warp, c_purple, c_purple, c_blue);

//part_type_gravity(part_player, 0.02, 270);
//part_type_alpha2(part_player, 1, 0.5);
part_type_life(part_warp, 15, 30);