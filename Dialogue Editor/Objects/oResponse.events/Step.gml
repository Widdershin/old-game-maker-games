event_inherited()
if mouseOver and mouse_check_button_pressed(mb_right)
{
    newLink = true
}

if mouse_check_button_released(mb_right) and newLink
{
    if mouseOver
    {
        newLink = false
    }
    else
    {
        with(oStatement)
        {
            if mouseOver
            {
                other.link = id
                updatePathing = true
            }
        }
        newLink = false
        // do stuff
    }
}
