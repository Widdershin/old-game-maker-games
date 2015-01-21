draw_set_color(c_black);

if (instance_number(stick) == 0)
{
    draw_text(0, 0, "(Press space to look for joysticks.)");
}
else
{
    draw_text(0, room_height-18, "Press space to refresh joysticks.");
}

draw_text(room_width - 32, room_height - 16, fps);