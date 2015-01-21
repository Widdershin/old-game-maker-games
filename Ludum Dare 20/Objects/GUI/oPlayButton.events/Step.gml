/*
    Starts the game  
*/
if mouse_check_button_pressed(mb_left) && instance_position(mouse_x,mouse_y,id)
{
    room_goto(rLevelSelect)
}
if keyboard_check_pressed(ord("E"))
{
    room_goto(rEdit)
}
