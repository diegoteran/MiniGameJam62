/// @description Warp Stop Event
warp = false;
y += lengthdir_y(warp_dist, (image_angle+90)%360);
x += lengthdir_x(warp_dist, (image_angle+90)%360);
sprite_index = spr_player;
image_angle = (image_angle + 180)%360;

warp_ready = false;
warp_cooldown_timer = 0;