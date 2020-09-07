player = instance_nearest(x,y,obj_player);
shrink_crystal = variable_instance_get(player,"shrink_crystal");
warp_crystal = variable_instance_get(player,"warp_crystal");
ghost_crystal = variable_instance_get(player,"ghost_crystal");

if(ghost_crystal && warp_crystal && shrink_crystal){
	portal = instance_create_layer(x,y,"Instances",obj_room_warp);
	portal.targetRoom = rm_win;
	portal.targetX = 500;
	portal.targetY = 500;
	portal.sprite_index = spr_big_portal;
	instance_destroy();
}