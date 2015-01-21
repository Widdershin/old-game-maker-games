if keyboard_check_pressed(vk_space)
{
    if !iso {iso = true}
    else    {iso = false}
}
if !iso && mouse_check_button(mb_left)
{
    inst = instance_position((mouse_x div 32)*32,(mouse_y div 32)*32,oCube)
    if !inst
    {
        instance_create((mouse_x div 32)*32,(mouse_y div 32)*32,oCube)
    }
}
