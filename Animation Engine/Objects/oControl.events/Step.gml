if(window_get_width() != view_wview || window_get_height() != view_hview) {
    view_wview = window_get_width();
    view_hview = window_get_height();
    view_wport = window_get_width();
    view_hport = window_get_height();
    room_restart()
}
if keyboard_check_pressed(vk_space){show_message(window_get_width())}
if keyboard_check_pressed(vk_right){frame += 1}
if keyboard_check_pressed(vk_left){if frame != 0 {frame -= 1}}
if keyboard_check_pressed(vk_enter)
{
    if keyframe[frame] {keyframe[frame] = 0}
    else               {keyframe[frame] = 1}
}
if frame != prevframe && keyframe[frame]
{
    with(oBone)
    {
        x = xx[frame]
        y = yy[frame]
        image_angle = angle[frame]
    }
}
prevframe = frame
