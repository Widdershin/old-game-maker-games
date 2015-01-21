if (argument1.damage-135) < 0 
{
    argument1.damage = ((argument1.damage-135)/3)+135
}
if (argument1.firedelay-135) > 0 
{
    argument1.firedelay = ((argument1.firedelay-135)/3)+135
}
//if (grabbedID.firedelay-135) > 0 grabbedID.firedelay /= 2
argument0.damage += (argument1.damage-135)
argument0.firedelay += (argument1.firedelay-135)
with(argument1)
{
    instance_destroy()
}
