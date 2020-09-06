dying = false;
falling = false;
walk_speed = 2;
collision_coeff = 1.1;
can_move = true;
global.music = false;

//animations
anim_y = false;
anim_x = false;
anim_stop_posx = 0;
anim_stop_posy = 0;
anim_speed_x = 0;
anim_speed_y = 0;

// death
death_timer = 0;
death_rate = 60;

// Warp
warp_enabled = false;
warp = false;
warp_dist = -55;
warp_timer = 0;
warp_rate = 60;
warp_ready = true;
warp_cooldown = 45;
facing_direction = 0;
warp_cooldown_timer = 0;
warp_crystal = false;

// shrinking
shrink_enabled = false;
shrunk = false;
shrink_scale = 0.5;
shrink_timer = 0;
shrink_ready = true;
shrink_cooldown = 180;
shrink_cooldown_timer = 0;
shrink_rate = 60;
shrink_crystal = true;

// ghost mode
ghost_enabled = false;
ghost = false;
ghost_ready = true;
ghost_cooldown_timer = 0;
ghost_cooldown_rate = 90;
ghost_timer = 0;
ghost_rate = 60;
ghost_crystal = false;

// particle system
part_system = part_system_create();
part_emitter = part_emitter_create(part_system);
part_player = part_type_create();
part_type_gravity(part_player, 0.02, 270);
part_type_color2(part_player, c_white, c_black);
part_type_alpha2(part_player, 1, 0.5);
part_type_life(part_player, 5, 15);