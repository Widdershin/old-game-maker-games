if newRoom
{
    draw_set_color(c_red)
    if newRoomValid
        draw_set_color(c_lime)
    draw_rectangle(newRoomX1, newRoomY1, newRoomX2, newRoomY2, 1)
}
