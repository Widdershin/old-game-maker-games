if x < 0 || x > room_width || y < 0 || y > room_height
{
    instance_destroy()
}
if target.state = 0
{
    direction = point_direction(x,y,target.x,target.y)
}
if spin {image_angle += spinamount} else {image_angle = radtodeg(arctan2(hspeed,vspeed))+90}
