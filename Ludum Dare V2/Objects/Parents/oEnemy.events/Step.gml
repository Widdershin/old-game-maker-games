if r = false
{
    path_start(roomTrack,SP/2,0,1)
    r = true
}
if keyboard_check_pressed(ord("K")) && state = 0
{
death()
}
if state = 0
{
    if HP < 1
    {
    death()
    }
}
if state = 1 
{
    if rotclock = true
    {
        image_angle += 2
    }
    
    else if rotclock = false
    {
        image_angle -= 2
    }
    
    if image_angle > 8
    {
        rotclock = false
    }
    
    if image_angle < -8
    {
        rotclock = true
    }
}

if state = 2
{
    if stateprev != 2
    {
        firenext = firedelay
    }
    if damage < 30 damage = 30
    if damage > 300 damage = 300
    if firedelay < 30 firedelay = 30
    if firedelay > 300 firedelay = 300
    image_angle = 0
    speed = 0
    if firenext > 0 firenext -= 1
    temp = 0
    lowdis = 100000
    low = 0
    repeat(instance_number(oEnemy))
    {
        cur = instance_find(oEnemy,temp)
        curdis = point_distance(x,y,cur.x,cur.y)
        if cur.state = 0 && curdis < lowdis
        {
            low = cur
            lowdis = curdis
        }
        temp += 1
    }
    if firenext < 1 && lowdis > 0 && lowdis < range
    {
        fire()
    }
}
stateprev = state
