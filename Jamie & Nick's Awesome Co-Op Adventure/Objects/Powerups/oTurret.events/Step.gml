gunid.x = x
gunid.y = y+2
num = instance_number(oEnemy)
if instance_number(oEnemy)
{
    tar = instance_nearest(x,y,oEnemy)
    tardis = point_distance(x,y,tar.x,tar.y)/6
    tarang = point_direction(x,y,tar.x+tar.hspeed*tardis,tar.y+tar.vspeed*tardis)
    gunid.image_angle = tarang
    with (gunid) {fire()}
}
