/*if !variable_local_exists(team)
{
    team = -1
}*/
if (phase = plan)
{
    
}
if (phase = fight)
{
    if (prevx != x || prevy != y)
    {
        dir = point_direction(x,y,prevx,prevy)+90
    }
    prevx = x
    prevy = y   
    if (lookdir = looktarget)
    {
        looktarget = dir+(irandom(90)-45)
    }
    else
    {
        lookdir += looktarget-dir/60
    }
}


if debug
{
    switch(team)
    {
        case 0: image_blend = c_red; break;
        case 1: image_blend = c_aqua; break;
    }
}

