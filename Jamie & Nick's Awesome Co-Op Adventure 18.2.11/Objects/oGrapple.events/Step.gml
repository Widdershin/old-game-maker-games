image_angle = direction
if instance_position(x,y,oPlatform)
{
    speed = 0
    dis = point_distance(x,y,orig.x,orig.y)
    grapple = 1
}
if grapple = 1
{
    if distance_to_object(orig) <= dis
    {
        orig.hspeed = (x-orig.x)/(dis/2)
    }
    else
    {
        vpspeed = 0
    }
}
