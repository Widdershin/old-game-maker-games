if mouse_x > x and mouse_x < x + width and mouse_y > y and mouse_y < y + height
{
    mouseOver = true
}
else
{
    mouseOver = false
}


if mouse_check_button_released(mb_right)
{
    if mouseOver
    {
        if editing
        {
            editing = false
            text = keyboard_string
        }
        else if !editing
        {
            editing = true
            keyboard_string = text
        }
    }
    else if editing
    {
        editing = false
    }
}


if editing
{
    text = keyboard_string    
}


