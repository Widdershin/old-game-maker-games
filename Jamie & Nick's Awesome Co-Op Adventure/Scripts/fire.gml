if firecool = 0
{
    repeat(count)
    {
        offx = lengthdir_x(fireoffx,image_angle)
        offy = lengthdir_y(fireoffx,image_angle)
        bulid = instance_create(x+offx,y+offy,oBullet)
        bulid.speed = velocity + random(velocitydiff)-(velocitydiff/2)
        bulid.direction = image_angle + random(spread)-(spread/2)
        bulid.color = orig.colord
        bulid.damage = damage
    }
    firecool = firerate
}
