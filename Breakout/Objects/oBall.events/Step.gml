//oBall Step
if !active
{
    x = oPaddle.x
    y = oPaddle.y-sprite_height
}
if active and !prevactive
{
    direction = choose(45,135)
    speed = 4
}
prevactive = active

if x > room_width-sprite_width/2
{
     //reverses the ball if it touches the right
    hspeed = -hspeed
}
if x < sprite_width/2
{
    //reverses the ball if it touches the left
    hspeed = -hspeed
}
if y < sprite_height/2
{
    //reverses the ball if it touches the top
    vspeed = -vspeed
}

if instance_place(x,y+vspeed,oPaddle)
{
    move_contact_all(direction,speed)    
    vspeed = -vspeed
}

if instance_place(x+hspeed,y,oPaddle)
{
    move_contact_all(direction,speed)    
    hspeed = -hspeed
}

if y > room_height+sprite_width/2
{
    lifecount -= 1
    ball = instance_create(oPaddle.x,oPaddle.y-oPaddle.sprite_width/2,oBall)
    ball.active = false
    instance_destroy()
}


brick = instance_place(x,y+vspeed,oBrick)
if brick
{
    move_contact_all(direction,speed)    
    vspeed = -vspeed
    with(brick)
    {
        instance_destroy()
    }
}

brick = instance_place(x+hspeed,y,oBrick)
if brick
{
    move_contact_all(direction,speed)    
    hspeed = -hspeed
    with(brick)
    {
        instance_destroy()
    }
}

//oBall Step
