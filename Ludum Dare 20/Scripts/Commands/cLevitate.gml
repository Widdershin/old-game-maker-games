if object_index = oMage 
{
    if !command.cooldown 
    {
        instance_create(command.x,command.y,oLevitateSquare)
        command.cooldown = 10
    } 
    if command.cooldown > 0
    {
        command.cooldown -= 1
    }  
    hspeed = 0 
    rot = 0 
    vspeed = 0
    root = 1
}
