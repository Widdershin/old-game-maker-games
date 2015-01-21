if keyboard_check_pressed(vk_f1)
{
    if console_enabled = false
    {
        console_enabled = true
        keyboard_string = ""
    }
    else if console_enabled = true
    {
    console_enabled = false
    keyboard_string = ""
    }
}
if keyboard_check_pressed(vk_up)
{
    keyboard_string = lastcmd
}
if keyboard_check_pressed(vk_enter) && console_enabled
{
    lastcmd = keyboard_string
    execute_string(keyboard_string)
    console_enabled = false
    keyboard_string = ""
}


