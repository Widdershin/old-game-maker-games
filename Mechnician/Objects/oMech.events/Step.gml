if keyboard_check(ord("W"))
{
    y -= movspeed
}
if keyboard_check(ord("A"))
{
    x -= movspeed
}
if keyboard_check(ord("S"))
{
    y += movspeed
}
if keyboard_check(ord("D"))
{
    x += movspeed
}
image_angle = point_direction(x,y,mouse_x,mouse_y)
