direction = radtodeg(arctan2(vspeed,hspeed))


/***************************************************
  Right. This is the A.I. code.
***************************************************/
/*
xdist = x-player.x
ydist = y-player.y
los = collision_line(x,y,player.x,player.y,all,0,1)
if xdist < 0
{
    xdistpos = xdist * -1
}
else
{
    xdistpos = xdist
}

if ydist < 0
{
    ydistpos = ydist * -1
}
else
{
    ydistpos = ydist
}

if xdistpos < ydistpos
{
   if xdist > 0
   {
        if place_free(x-1,y)
       {
           x -= 0.3
           direction = 180
       }
   }
   if xdist < 0
   {
        if place_free(x+1,y)
       {
           x += 0.3
           direction = 0
       }
   }
   if xdist = 0
    {
       bulletid = instance_create(x,y,bullet)
       bullet.direction = direction
       bullet.speed = 1
   }
}
if ydistpos < xdistpos
{
   if ydist > 0
   {
        if place_free(x,y-1)
        {
            y -= 0.3
            direction = 90
        }
    }
    if ydist < 0
    {
        if place_free(x,y+1)
        {
            y += 0.3
            direction = 270
        }
    }
    if ydist = 0
    {
        bulletid = instance_create(x,y,bullet)
        bullet.direction = direction
        bullet.speed = 1
    }
} 
