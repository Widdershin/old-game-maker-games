background = surface_create(room_width, room_height)

surface_set_target(background)
draw_clear(c_black)

with(oTile)
{
    event_perform(ev_draw, 0)
    instance_destroy()
}

surface_reset_target()

depth = 10000
