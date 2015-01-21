success = 0
temp = 0 
repeat(instance_number(argument0))
{
    tempid = instance_find(argument0,temp)
    if tempid.curcapacity < tempid.capacity && !success
    {
        tempid.curcapacity += 1
        return tempid
        success = true
        exit
    }
    temp += 1
}
if !success 
{
    return -1
    status = "Don't know where to go!"
}
