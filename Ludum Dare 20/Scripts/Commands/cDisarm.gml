if object_index = oRogue 
{
    hspeed = 0 
    rot = 0 
    with(instance_place(command.x,command.y,oTrap))
    {
        instance_destroy()
    }
    hspeed = xscale 
    with(command)
    {
        instance_destroy()
    }
}
