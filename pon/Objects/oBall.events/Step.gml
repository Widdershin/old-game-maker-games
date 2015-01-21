if place_meeting(x,y,oWall)
{
    vspeed *= -1
}
if place_meeting(x,y,oPaddle)
{
    if lastcol != instance_position(x,y,oPaddle).id
    {
        hspeed *= -1
        lastcol = instance_position(x,y,oPaddle)
    }
}
