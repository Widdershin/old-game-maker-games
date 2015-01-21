if fuse >= 1
{
fuse -= 1
}
else if fuse <= 0 
{
explosionid  = instance_create(x,y,explosion)
instance_destroy()
}
