var a;
a = argument0
damage = STR
a.hp -= damage
if a.object_index != oPlayer
{
    sendmsg("You hit the "+a.name+" for "+string(damage)+" damage.")
}
else
{
    sendmsg("The "+name+" hit you for "+string(damage)+" damage.")
}
if a.hp < 1
{
    sendmsg("You destroyed the "+a.name+".")
    with(a)
    {
        instance_destroy()
    }
}
