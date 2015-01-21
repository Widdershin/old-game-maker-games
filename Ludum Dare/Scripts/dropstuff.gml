var willdrop, dropchance;
dropchance = irandom(10)*dropmultiplier
if dropchance > 8
{
    willdrop = true
}
else
{
willdrop = false
}

if willdrop
{
    dropmultiplier = 0
    dropID = instance_create(argument0,argument1,oDrop)
    dropID.speed = random(3)+2
    dropID.direction = random(90)+135
    dropID.rotspeed = random(10)-5
    
}
else
{
    dropmultiplier += 1
}
