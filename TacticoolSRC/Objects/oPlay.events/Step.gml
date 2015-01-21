if mouse_id = id {sprite_index = sPlayA} else {sprite_index = sPlay}
if mouse_check_button_pressed(mb_left) && mouse_id = id
{
    room_goto(rLab)
    sound_stop(sbMenu)
}
