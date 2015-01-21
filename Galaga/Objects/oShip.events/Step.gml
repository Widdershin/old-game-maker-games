//oShip Step
if keyboard_check(leftkey)
{
    x -= movespeed
}

if keyboard_check(rightkey)
{
    x += movespeed
}

if keyboard_check(bulletkey) and timer <= 0
{
    bullet = instance_create(x,y,oBullet)
    bullet.vspeed = -4
    bullet.image_angle = 90
    timer = firerate
}

timer -= 1
