
//oBall Step
//If the ball is out of the room vertically, rebound
if (y < 16)
{
    vspeed = -vspeed
}

if (y > room_height-16)
{
    vspeed = -vspeed
}

//Bounces off the paddles horizontally
if instance_place(x+hspeed,y,oPaddle1)
{
    hspeed = -hspeed
}

if instance_place(x+hspeed,y,oPaddle2)
{
    hspeed = -hspeed
}

//Bounces off the paddles vertically
if instance_place(x,y+vspeed,oPaddle1)
{
    vspeed = -vspeed
}

if instance_place(x,y+vspeed,oPaddle2)
{
    vspeed = -vspeed
}


if x < 0
{
    p2score += 1
    instance_create(room_width/2,room_height/2,oBall)
    instance_destroy()
}

if x > room_width
{
    p1score += 1
    instance_create(room_width/2,room_height/2,oBall)
    instance_destroy()
}

