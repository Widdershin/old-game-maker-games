/*
    Moves to the next room when clicked
*/
if image_index = 31
{
    image_speed = 0
}
if mouse_check_button_pressed(mb_left) && instance_position(mouse_x,mouse_y,id)
{
    current += 1
    room_goto(level[current])
}
