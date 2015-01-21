//oPaddle Step
hspeed = 0
if keyboard_check(vk_left) and x > sprite_width/2
{
    //moves the paddle left
    hspeed = -3
}
if keyboard_check(vk_right) and x < room_width-sprite_width/2
{
    //moves the paddle right
    hspeed = 3
}
if keyboard_check_pressed(vk_space)
{
    oBall.active = true
}
ball = instance_place(x+hspeed,y,oBall)
if ball
{
    with(ball)
    {
        if active
        {
            move_outside_all(other.direction,other.hspeed)
        }
    }
}

