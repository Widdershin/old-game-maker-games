if keyboard_check_pressed(vk_left)
{
    currentblock.x -= 32
}
if keyboard_check_pressed(vk_right)
{
    currentblock.x += 32
}
if keyboard_check_pressed(vk_down)
{
    with(currentblock)
    {
        move_contact_all(270,room_height-y-sprite_height)
        linecheck()
        currentblock = instance_create(room_width/2,0,oBlock1)
    }
}
if tick > 0
{
    tick -= 1
}
else
{
    tick = tickmax
    if currentblock.y < room_height-currentblock.sprite_height
    {
        currentblock.y += 32
    }
    else
    {
        linecheck()
        currentblock = instance_create(room_width/2,0,oBlock1)
    }
}
