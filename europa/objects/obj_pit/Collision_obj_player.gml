
pit = instance_create_layer(x,y+273,"Instances", obj_pit_wall)
pit.image_xscale = image_xscale;
pit.image_yscale = image_yscale;
pit.depth = -room_width

other.falling = true;
other.direction = point_direction(other.x,other.y, pit.x, pit.y);
other.speed = 6;
