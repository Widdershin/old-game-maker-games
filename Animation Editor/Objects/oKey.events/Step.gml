if curid = id
{
    image_index = 1
}
else
{
    image_index = 0 
}
if mouse_check_button_pressed(mb_left) && instance_position(mouse_x,mouse_y,id)
{
    cur = num
    curid = id
    with(oBone)
    {
        x = xx[cur]
        y = yy[cur]
        image_angle = ang[cur]
    }
}

