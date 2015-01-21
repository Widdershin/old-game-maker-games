depth = 0
if held
{
    x = floor(mouse_x/32)*32
    y = floor(mouse_y/32)*32
    depth = -10
    if mouse_check_button_pressed(mb_left)
    {
        if clear = roomw*roomh
        {
        held = 0
        sound_play(sPlace)
        spawnx = x + lengthdir_x(65,image_angle) 
        spawny = y + lengthdir_y(65, image_angle)
        mousefree = 1
        pathgrid()
        }
        else
        {
        sound_play(sNoPlace)
        }
    }
    if mouse_check_button_pressed(mb_right)
    {
        image_angle += 270
        sound_play(sRotate)
    }
}
if abs(image_angle) > 359 {image_angle -= 360}
if abs(image_angle) < 0 {image_angle += 360}

