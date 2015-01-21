event_inherited()

if !open
{
    if image_index != 0
    {
        image_speed = -1
        
    }
    else
    {
        image_speed = 0
    }
}

if open
{
    if image_index != image_number - 1
    {
        image_speed = 1
        animDone = false
    }
    else
    {
        image_speed = 0
    }
}

animDone = false
if image_speed == 0
{
    animDone = true
}
/*
open = false
if keyboard_check(ord("L"))
{
    open =true
}
