speed = 0
if keyboard_check(ord("W")) && place_free(x,y-movespeed)
{
    vspeed = -movespeed
}
if keyboard_check(ord("A")) && place_free(x-movespeed,y)
{
    hspeed = -movespeed
}
if keyboard_check(ord("S")) && place_free(x,y+movespeed)
{
    vspeed = movespeed
}
if keyboard_check(ord("D")) && place_free(x+movespeed,y)
{
    hspeed = movespeed
}
if vspeed != 0 && hspeed != 0
{
    hspeed = 1.41*sign(hspeed)
    vspeed = 1.41*sign(vspeed)
}
image_angle = direction
