if keyboard_check_pressed(ord("1"))
{
    a = true
    screen_redraw()
    screen_refresh()
    room_goto(room2)
}
if keyboard_check_pressed(ord("2"))
{
    if lighting = false{lighting = true}
    else {lighting = false}    
}
if lighting = false
{
    menuitem[1] = "Lighting Disabled"
}
else
{
    menuitem[1] = "Lighting Enabled"
}
if keyboard_check_pressed(ord("3"))
{
    if debug = false{debug = true}
    else {debug = false}    
}
if debug = false
{
    menuitem[2] = "Debug Disabled"
}
else
{
    menuitem[2] = "Debug Enabled"
}
