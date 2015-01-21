///////////////////////////////////Weapon Code///////////////////////////////////////////////////
gunid.x = x
gunid.y = y-3
if !joystick
{
    gunid.image_angle = point_direction(x,y,mouse_x,mouse_y)
}
else
{
    if abs(joystick_rpos(joystickid)) > 0.15 || abs(joystick_upos(joystickid)) > 0.15
    {
        dir = point_direction(x,y,x+joystick_upos(joystickid),y+joystick_rpos(joystickid))
        gunid.image_angle = dir
    }
}
if joystick_zpos(joystickid) < -0.1
{
    with(gunid)fire()
}
if gunid.image_angle > 90 && gunid.image_angle < 270
{gunid.yscale = -1}
else
{gunid.yscale = 1}

if !aimbot
{
    if keyboard_check_pressed(usekey) || mouse_check_button(mb_left)
    {
        with(gunid)fire()
    }
}
if aimbot
{
    
    num = instance_number(oEnemy)
    if instance_number(oEnemy)
    {
        tar = instance_nearest(x,y,oEnemy)
        tardis = point_distance(x,y,tar.x,tar.y)/6
        tarang = point_direction(x,y,tar.x+tar.hspeed*tardis,tar.y+tar.vspeed*tardis)
        gunid.image_angle = tarang
        with(gunid)fire()
    }
}
