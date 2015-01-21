moveX = joystick_xpos(0) 
moveY = joystick_ypos(0)
if (abs(moveX) > deadzone or abs(moveY) > deadzone)
{
    x += moveX
    y += moveY
    image_angle = point_direction(0, 0, moveX, moveY)
}

