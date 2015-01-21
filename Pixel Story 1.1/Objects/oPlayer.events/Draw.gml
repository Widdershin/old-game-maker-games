draw_sprite(sPlayer, -1, dX, dY)

if portalTime < 120
{
    draw_set_color(c_black)
    draw_set_alpha(portalTime / 120)
    draw_rectangle(0, 0, room_width, room_height, 0)
    draw_set_alpha(1)
}

