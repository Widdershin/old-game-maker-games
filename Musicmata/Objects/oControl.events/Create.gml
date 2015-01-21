globalvar tilew, tileh, notes, instrument;
tickcount = 10
tick = tickcount
midi_init(window_handle())
tilew = room_width / 32
tileh = room_height / 32


grid = surface_create(room_width,room_height)
surface_set_target(grid)
for (i=0; i<room_width/32; i+=1)
{
    draw_set_color(c_white)
    draw_line(i*32,0,i*32,room_height)
}

for (i=0; i<room_width/32; i+=1)
{
    draw_set_color(c_white)
    draw_line(0,i*32,room_width,i*32)
}
surface_reset_target()

notes = surface_create(room_width,room_height)
surface_set_target(notes)
draw_clear(c_black)
surface_reset_target()

run = false

instrument = 0
draw_rectangle(0,0,room_width,room_height,0)
