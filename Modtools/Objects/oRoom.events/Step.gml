if mouse_check_button_pressed(mb_left)
{
    xoff = x-(mouse_x div 32) * 32
    yoff = y-(mouse_y div 32) * 32
    draw = 1
}
if keyboard_check_pressed(vk_space)
{
    image_angle += 270
}
if abs(image_angle) > 359 {image_angle -= 360}
if abs(image_angle) < 0 {image_angle += 360}

