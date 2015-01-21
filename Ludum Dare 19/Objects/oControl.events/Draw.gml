if clipboard
{
    draw_sprite(sClipboard,-1,15,15)
}
if pathtool = 2
{
draw_set_color(c_aqua)
draw_rectangle(path1x,path1y,path1x+32,path1y+32,1)
draw_rectangle(floor(mouse_x/32)*32,floor(mouse_y/32)*32,floor(mouse_x/32)*32+32,floor(mouse_y/32)*32+32,1)
}
if keyboard_check(ord("G"))
{
    mp_grid_draw(pgrid)
}

