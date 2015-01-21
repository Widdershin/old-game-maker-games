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
//Bounces off the paddles
if instance_place(x+hspeed,y,oPaddle1)
{
    hspeed = -hspeed
}

if instance_place(x+hspeed,y,oPaddle2)
{
    hspeed = -hspeed
}
