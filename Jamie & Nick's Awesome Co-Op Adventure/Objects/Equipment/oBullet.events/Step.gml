if place_meeting(x,y,oEnemy)
{
    with (instance_position(x,y,oEnemy))
    {
        hp -= other.damage
        with(other){instance_destroy()}
    }
}
if x > room_width || x < 0 || y > room_height || y < 0
{
    instance_destroy()
}
if place_meeting(x,y,oPlatform)
{
    instance_destroy()
}
