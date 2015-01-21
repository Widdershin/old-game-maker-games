//Path Speed
ps = low.path_position - low.path_positionprevious
//Flight Time
temp = point_distance(x,y,low.x,low.y)/6
//Destination
tempx = path_get_x(roomTrack,low.path_position+(ps*temp))
tempy = path_get_y(roomTrack,low.path_position+(ps*temp))
//Flight Direction
tempdir = point_direction(x,y,tempx,tempy)
//Not Really Relevant
fireID = instance_create(x,y,projectile)
sound_play(sThrow)
fireID.damage = damage
fireID.speed = 6
fireID.direction = tempdir
fireID.target = low
firenext = firedelay
