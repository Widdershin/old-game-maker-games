if mouse_check_button_pressed(mb_left) && instance_position(mouse_x,mouse_y,id) && mousefree
{
    sound_play(soMenu)
    cursor_sprite = sSpade
    mousefree = 0
    pathtool = 1
}
x = view_xview+32
y = view_yview+16
