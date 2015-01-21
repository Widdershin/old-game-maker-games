if mouse_check_button_pressed(mb_left) && instance_position(mouse_x,mouse_y,id) {lheld = 1}
if mouse_check_button_released(mb_left) 
{
    lheld = 0
    xx[cur] = x
    yy[cur] = y
}
if lheld
{
    x = mouse_x
    y = mouse_y
}
if mouse_check_button_pressed(mb_right) && instance_position(mouse_x,mouse_y,id) {rheld = 1}
if mouse_check_button_released(mb_right) 
{
    rheld = 0
    ang[cur] = image_angle
}
if rheld
{
    image_angle = point_direction(x,y,mouse_x,mouse_y)
}
