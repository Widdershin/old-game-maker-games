mousedist = distance_to_point(mouse_x,mouse_y)
if mousedist < 48
{
    y = yorig - 24+mousedist/2
}
else
{
    y = yorig
}
if (mouse_check_button_pressed(mb_left)  && instance_position(mouse_x,mouse_y,id) || keyboard_check_pressed(ord(key))) && !mouseheld 
{
    room_goto(rLevelSelect)
}

