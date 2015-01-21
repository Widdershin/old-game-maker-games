if next < 0 && count > 0
{
    instance_create(-100,-100,object)
    count -= 1
    next = 32
}
next -= 1
if count < 1 {instance_destroy()}
