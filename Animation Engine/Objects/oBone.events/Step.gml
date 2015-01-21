if mouse_check_button_pressed(mb_left) && instance_position(mouse_x,mouse_y,oBone) {lheld = 1}
if mouse_check_button_released(mb_left) {lheld = 0}
if lheld
{
    x = mouse_x
    y = mouse_y
}
if mouse_check_button_pressed(mb_right) && instance_position(mouse_x,mouse_y,oBone) {rheld = 1}
if mouse_check_button_released(mb_right) {rheld = 0}
if rheld
{
    image_angle = point_direction(x,y,mouse_x,mouse_y)
}
if keyframe[frame]
{
    xx[frame] = x
    yy[frame] = y
    angle[frame] = image_angle
}
