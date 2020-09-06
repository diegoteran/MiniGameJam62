
//pit = instance_create_layer(x,y+273,"Instances", obj_pit_wall)
//pit.image_xscale = image_xscale;
//pit.image_yscale = image_yscale;
//pit.depth = -room_width
if(other.falling || other.anim_y){return;}
audio_play_sound(snd_falling, 1, false);
other.falling = true;
other.dying = true;
other.direction = point_direction(other.x,other.y, x, y);
other.speed = 0.5;
