if oBall.x > 640
{
    with(oBall)
    {
        instance_destroy()    
    }
    scr1 += 1
    room_restart()
}
if oBall.x < 0
{
    with(oBall)
    {
        instance_destroy()    
    }
    scr2 += 1
    room_restart()
}
