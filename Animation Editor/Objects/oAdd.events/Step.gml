if mouse_check_button_pressed(mb_left) && instance_position(mouse_x,mouse_y,id)
{
    key[0] += 1
    keyid = instance_create((key[0]-1)*22,y,oKey)
    key[key[0]] = keyid
    key[key[0]].num = key[0]
    x += 22
    with(oBone)
    {
        xx[key[0]] = x
        yy[key[0]] = y
        ang[key[0]] = image_angle
    }
}

if keyboard_check_pressed(vk_space)
{
tween()
}
