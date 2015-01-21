facingDir = point_direction(x, y, mouse_x, mouse_y)

if keyboard_check(ord("W"))
{
    y -= 1   
}

if keyboard_check(ord("S"))
{
    y += 1
}

if keyboard_check(ord("A"))
{
    x -= 1
}

if keyboard_check(ord("D"))
{
    x += 1
}


