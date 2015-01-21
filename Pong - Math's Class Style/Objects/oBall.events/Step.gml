if hitCount > 10
{
ball1 = instance_create(x,y,oBall)
ball1.direction = choose(45, 135, 225, 315)
ball2 = instance_create(x,y,oBall)
ball2.direction = choose(45, 135, 225) + ball1+direction
instance_destroy()
}

if x < 0
{
scoreRight += 1
restart()
}

if x > room_width
{
scoreLeft += 1
restart()
}
