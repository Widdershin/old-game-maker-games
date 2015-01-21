//dir = point_direction(x, y, mouse_x, mouse_y)

if keyboard_check_pressed(vk_space)
looktarget = dir+(random(90)-45)

lookspeed = dir-looktarget / 100

lookdir += lookspeed
