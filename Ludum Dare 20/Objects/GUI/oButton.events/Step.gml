/*
    Controls the position of buttons
*/
mousedist = distance_to_point(mouse_x,mouse_y)
if mousedist < 48
{
    y = round(yorig - 24+mousedist/2)
}
else
{
    y = yorig
}
if (mouse_check_button_pressed(mb_left) && instance_position(mouse_x,mouse_y,id)  || keyboard_check_pressed(ord(key))) && !mouseheld
{
    if room = rEdit
    {
        stopid = instance_create(mouse_x,mouse_y,oBuild)
        stopid.target = object
        stopid.sprite_index = object_get_sprite(object)
    }
    else
    {
        stopid = instance_create(mouse_x,mouse_y,object)
        stopid.active = false
    }
    sound_play(soPlace)
    mouseheld = stopid
}

