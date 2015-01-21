if x < 0-(sprite_width/2)
{
    instance_destroy()
}
if place_meeting(x,y,oPlayer)
{
    with(instance_position(x,y,oPlayer))
    {
        gameover(instance_position(x,y,oPlayer))
    }
}
if hp <= 0
{
     instance_destroy()
}
