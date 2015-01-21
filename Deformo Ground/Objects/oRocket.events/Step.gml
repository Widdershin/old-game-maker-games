event_inherited()
part_particles_create(partid,x+lengthdir_x(random(6)-3,direction),y,rocketpart,1)
if place_meeting(x,y,oGround)
{
    deformground(sEraser,x,y)
    makeground()
    instance_destroy()
}
