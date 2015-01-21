var ballCount;

ballCount = instance_number(oBall)

repeat(ballCount)
{
    with(instance_find(oBall,0))
    {
        instance_destroy()
    }
}
oPlayer.y = 208
oPlayer2.y = 208
instance_create(288,208,oBall)
