/*
    Controls the GUI buttons and manages input
*/
if room = rEdit && !mouseheld && released
{
    if mouse_check_button(mb_left)
    {
        if place_free((mouse_x div 32)*32,(mouse_y div 32)*32)
        {
            instance_create((mouse_x div 32)*32,(mouse_y div 32)*32,oGround)
        }
    }
    
    if mouse_check_button(mb_right)
    {
        with(instance_position(mouse_x,mouse_y,oGround))
        {
            below = instance_position(x,y+32,oGround)
            if below {below.topblock = true}
            instance_destroy()
        }
    }
}
if mouseheld
{
    released = false
    mouseheld.x = mouse_x div 32 * 32
    mouseheld.y = mouse_y div 32 * 32
    mouseheld.active = false
    if mouse_check_button_pressed(mb_right)
    {
        with(mouseheld)
        {
            instance_destroy()
        }
        mouseheld = -1
    }
    if mouse_check_button_pressed(mb_left)
    {
        if mouseheld.free && mouse_x > 0 && mouse_x < room_width && mouse_y > 0 && mouse_y < room_height
        {
            mouseheld.x = (mouse_x div 32)*32
            mouseheld.y = (mouse_y div 32)*32
            mouseheld.active = true
            mouseheld.placed = true
            sound_play(soPlace)
            mouseheld = -1
            chill = true
            released = true
        }
    }    
    if !instance_exists(mouseheld)
    {
        mouseheld = -1
    }
}
else if mouse_check_button_pressed(mb_right) && instance_position(mouse_x,mouse_y,oCommand)
{
    with(instance_position(mouse_x,mouse_y,oCommand))
    {
        instance_destroy()
    }
}
if mouse_check_button_released(mb_left)
{
    released = true
}
if keyboard_check_pressed(ord("S"))
{
    save()
}
if keyboard_check_pressed(ord("L"))
{
    load()
}

if keyboard_check_pressed(ord("E"))
{
    save()
    room_goto(rEdit)
}
