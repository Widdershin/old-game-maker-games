if winTime < 200
{
    draw_set_color(c_yellow)
    draw_set_alpha(winTime / 180)
    draw_rectangle(0, 0, room_width, room_height, 0)
    draw_set_alpha(1)
}

winPercent = ((room_width - t*5) * ((winCondition/win))) div t * t
draw_rectangle(t*5,384,t*5+winPercent,room_height,0)
