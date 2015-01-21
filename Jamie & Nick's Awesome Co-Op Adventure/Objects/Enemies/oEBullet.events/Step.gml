if collision_line(xprevious,yprevious,x,y,oPlatform,1,1)
{
    instance_destroy()
}
if place_meeting(x,y,oPlayer)
{
    with (instance_position(x,y,oPlayer))
    {
        gameover(id)
    }
}
if place_meeting(x,y,oPlatform)
{
    instance_destroy()
}
if place_meeting(x,y,oPylon)
{
    instance_destroy()
}

if x > room_width || x < 0 || y > room_height || y < 0
{
    instance_destroy()
}
