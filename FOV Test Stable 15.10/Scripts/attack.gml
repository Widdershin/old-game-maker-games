var a;
a = argument0
damage = 19
a.health -= damage
sendmsg("You hit the "+a.name+" for "+string(damage)+" damage.")
if a.health < 1
{
    sendmsg("You destroyed the "+a.name+".")
    with(a)
    {
        instance_destroy()
    }
}
