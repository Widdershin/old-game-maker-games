/*
    Collides the blood with the ground and creates a splat
*/
ground = instance_place(x,y+vspeed,oGround)
if ground
{
    sprite_index = sBloodSplat
    move_contact_solid(270,vspeed)
    x = ground.x
    y = ground.y
}
