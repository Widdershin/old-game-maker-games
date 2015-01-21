if !pause
{
target = oPlayer
if !rocket
{
    if !collision_line(x+16,y+16,target.x,target.y,oPlatform,1,1)
    {
        lock += 1
        if lock = 60
        {
            rocket = instance_create(x+16,y+16,oRocket)
            rocket.target = target
            sound_play(soRocketLock)
        }
    }
    else
    {
        lock = 0
    }
    
}
else
{
    if !instance_exists(rocket)
    {
        rocket = -1
    }
}
rot = point_direction(x+16,y+16,target.x,target.y)
if y > room_height
{
        with(laser)
        {
            instance_destroy()
        } 
        instance_destroy()
}
vspeed = rate
}
