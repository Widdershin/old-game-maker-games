if instance_position(x,y,oPlayer)
{
    if player = oPlayer1
    {
        with(oPlayer1.gunid)
        {
            instance_change(p1pickup[other.powerup,0],1)
        }
        instance_destroy()
    }
}
