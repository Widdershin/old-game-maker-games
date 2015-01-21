inst = instance_place(x,y-32,oPlatform)
if !inst
top = true
inst = instance_place(x,y+32,oPlatform)
if inst
{
    inst.top = false
}

