if mouse_check_button_pressed(mb_left) && instance_position(mouse_x,mouse_y,id) && mousefree
{
    sound_play(soMenu)
    if setting = 0
    {
        setting = 1
        timescale = 0.25
    }
    else if setting = 1
    {
        setting = 2
        timescale = 0.5
    }
    else if setting = 2
    {
        setting = 3
        timescale = 1
    }
    else if setting = 3
    {
        setting = 0
        timescale = 0
    }
}
x = view_xview+0
y = view_yview+80
