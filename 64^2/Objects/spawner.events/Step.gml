if timer < 0
{
instance_create(x,y,enemy)
timer = 60
}
timer -= 1
if selfhealth < 1
{
instance_create(x,y-1,explosion)
instance_destroy()
}
