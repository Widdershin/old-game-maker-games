///////////////////////////////////Weapon Code///////////////////////////////////////////////////
gunid.x = x
gunid.y = y
gunid.image_angle = point_direction(x,y,mouse_x,mouse_y)
    if gunid.image_angle > 90 && gunid.image_angle < 270
    {
        gunid.yscale = -1
    }
    else
    {
        gunid.yscale = 1
    }
if !aimbot
{
    if keyboard_check_pressed(usekey) || mouse_check_button(mb_left)
    {
        if guntime = 0
        {
            bulid = instance_create(x,y,oBullet)
            bulid.speed = 5
            bulid.direction = gunid.image_angle
            guntime = gunload
        }
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
        if guntime = 0
        {
            bulid = instance_create(x,y,oBullet)
            bulid.speed = 5
            bulid.direction = gunid.image_angle
            guntime = gunload
        }
    }
}
if guntime > 0
{
    guntime -= 1
}
