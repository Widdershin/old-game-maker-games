if keyboard_check_pressed(ord("W"))
{
speed = 3
}
if keyboard_check_released(ord("W"))
{
speed = 0
}
if keyboard_check(ord("A"))
{
direction += 3
}
if keyboard_check(ord("D"))
{
direction -= 3
}
if keyboard_check_pressed(ord("S"))
{
speed = -3
}
if keyboard_check_released(ord("S"))
{
speed = 0
}
//direction += 1
if keyboard_check(vk_up)
{
    prec += 1
}
if keyboard_check(vk_down)
{
    prec -= 1
}
if keyboard_check_pressed(ord("O"))
{
    if outline {outline = false}
    else if !outline {outline = true}
}
if fpsmod
{
    if round(fps) >= round(room_speed)-1
    {
    room_speed += 2
    }
    if fps < room_speed/2
    {
    room_speed -= 1
     }
}
