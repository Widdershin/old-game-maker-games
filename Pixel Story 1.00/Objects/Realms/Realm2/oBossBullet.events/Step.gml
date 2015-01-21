if instance_place(dX, dY, oPlayer)
{
    oPlayer.hit += 1
    instance_destroy()
}

if instance_place(dX, dY, oWall)
{
    instance_destroy()
}

dX = x div t * t
dY = y div t * t

if x > room_width || y > room_height-t || x < 0 || y < 0
{
    instance_destroy()
}

