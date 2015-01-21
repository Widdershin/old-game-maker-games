part_particles_create(partid,x+lengthdir_x(random(6)-3,direction),y,rocketpart,2)
motion_add(point_direction(x,y,target.x,target.y),0.4)
if speed < 3
{
    motion_set(direction,3)
}
if speed > 4
{
    motion_set(direction,4)
}
speed *= 0.9
image_angle = direction

if instance_place(x,y,oPlatform)
{
    part_system_destroy(partid)
    instance_create(x,y,oExplosion)
    sound_play(soExplode)
    instance_destroy()
}
if instance_place(x,y,oPlayer)
{
    gameover()
    instance_destroy()
}
