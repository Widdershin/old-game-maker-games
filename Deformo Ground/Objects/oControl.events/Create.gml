globalvar rocketpart, explodepart;
rocketpart = part_type_create()
part_type_sprite(rocketpart,sRocketPart,0,0,0)
part_type_size(rocketpart,0.14,0.21,-0.005,0)

explodepart = part_type_create()
part_type_sprite(explodepart,sRocketPart,0,0,0)
part_type_size(explodepart,0.1,1,-0.01,0)
part_type_speed(explodepart,0.5,4,-0.1,0)
part_type_direction(explodepart,0,360,0,0)
part_type_life(explodepart,80,120)
part_type_color_mix(explodepart,c_yellow,c_red)
